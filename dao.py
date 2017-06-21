# -*- coding: utf-8 -*-
"""
Created on Tue Jun 20 22:34:38 2017

@author: onomatopeia
"""

import os
import configparser

def get_config():
    base_dir = os.path.dirname(__file__)
    config = configparser.ConfigParser()
    config.read(os.path.join(base_dir, 'db', 'settings.ini'))
    return config

def get_database_connection():
    import mysql.connector
    config = get_config()
    database = config.get('mysql','database')
    user = config.get('mysql','user')
    password = config.get('mysql','password')
    host = config.get('mysql','host')
    charset = config.get('mysql','charset')
    buffered = config.get('mysql','buffered')
    return mysql.connector.connect(user=user, password=password, host=host, database=database,
                                   charset=charset, buffered=buffered)

class MockDataAccessObject(object):
    def select(self):
        import lorem
        import random 
        from datetime import date
        posts = []
        today = date.today().toordinal()    
        for i in range(10):
            paragraph = lorem.text()
            post_date = date.fromordinal(random.randint(0, today))
            title = lorem.sentence()
            post_dict = {'CONTENT': paragraph, 'POST_DATE' : post_date, 'AUTHOR': 'kristin', 'TITLE': title}
            posts.append(post_dict)
        posts = sorted(posts, key=lambda post : post['POST_DATE'])
        return posts
        
    def insert(self, data):
        print(data)
        
    def __enter__(self):
        print('entering dao')
        return self
        
    def __exit__(self, *err):
        print('exiting dao')
    
class DataAccessObject(object):
    
    
    def __init__(self):
        self.connection = None
        self.cursor = None

    def __enter__(self):
        print('entering dao')
        self.connection = get_database_connection()
        self.cursor = self.connection.cursor(dictionary=True)
        return self

    def close(self):
        try:
            self.cursor.close()
        except ReferenceError:
            pass

        self.connection.close()

    def __exit__(self, *err):
        print('exiting dao')
        self.close()

    def commit(self):
        self.connection.commit()

    def rollback(self):
        self.connection.rollback()

    def execute(self, query, data):
        self.cursor.execute(query, data)
        if self.cursor.with_rows:
            rows = self.cursor.fetchall()
            return rows
        return self.cursor.lastrowid
        
        
    def select(self):
        return self.execute('SELECT TITLE, CONTENT, AUTHOR, POST_DATE FROM POSTS ORDER BY POST_DATE DESC', {})
        
    def insert(self, data):
        self.execute("INSERT INTO POSTS(TITLE, CONTENT, AUTHOR, " + 
        "POST_DATE) VALUES (%(TITLE)s, %(CONTENT)s, %(AUTHOR)s, " + 
        "%(POST_DATE)s)", data)
        self.commit()