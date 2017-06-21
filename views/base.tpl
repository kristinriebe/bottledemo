<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="favicon.ico">-->

    <title>Messages in the Bottle</title>

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap-united.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/static/css/style.css" rel="stylesheet">
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="nav blog-nav">
          % try:
          % if page == 'index':
          <a class="nav-link active" href="/">Home</a>
          % else:
          <a class="nav-link" href="/">Home</a>
          % end
          % if page == 'blog':
          <a class="nav-link active" href="/blog">Blog</a>
          % else:
          <a class="nav-link" href="/blog">Blog</a>
          % end
          % if page == 'post':
          <a class="nav-link active" href="/post">New post</a>
          % else:
          <a class="nav-link" href="/post">New post</a>
          % end
          % if page == 'about':
          <a class="nav-link active" href="/about">About</a>
          % else:
          <a class="nav-link" href="/about">About</a>
          % end
          % except NameError:
          <a class="nav-link" href="/">Home</a>
          <a class="nav-link" href="/blog">Blog</a>
          <a class="nav-link" href="/post">New post</a>
          <a class="nav-link" href="/about">About</a>
          % end
        </nav>
      </div>
    </div>

    <div class="blog-header">
      <div class="container">
        <h1 class="blog-title">Messages in the Bottle</h1>
        <p class="lead blog-description">Mostly inspirational stuff</p>
      </div>
    </div>

    <div class="container">

      <div class="row">

       {{!base}}

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>-->
    <script src="/static/js/bootstrap.min.js"></script>
  </body>
</html>