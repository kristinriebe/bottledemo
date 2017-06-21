% rebase('base.tpl')
<div class="col-sm-8 blog-main">
	% for post in posts:
  <div class="blog-post">
    <h2 class="blog-post-title">{{post['TITLE']}}</h2>
    <p class="blog-post-meta">{{post['POST_DATE']}} by <a href="#">{{post['AUTHOR']}}</a></p>

    <p>{{post['CONTENT']}}</p>
  </div><!-- /.blog-post -->
  	% end 

  <nav class="blog-pagination">
    <a class="btn btn-primary" href="#">Older</a>
    <a class="btn btn-secondary disabled" href="#">Newer</a>
  </nav>

  <div class="blog-pagination">
      <a class="btn btn-primary" href="/post">Add new entry</a>
  </div>


</div><!-- /.blog-main -->