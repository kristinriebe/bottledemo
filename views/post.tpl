% rebase('base.tpl')
<h4>New post</h4>
Create a new post here:
<form id="new_post" action="blog" method="post" class="form-new-post">
    <h2 class="form-heading">New Message</h2>
    <label for="title">Title:</label>
    <input type="text" class="form-control" name="title" id="title"/>
    <label for="author">Author:</label>
    <input type="text" class="form-control" name="date" id="date"/>
    <label for"content">Date:</label>
    <input type="text" class="form-control" name="author" id="author"/>
    <label for"content">Content:</label>
    <textarea name="content" class="form-control" id="content"></textarea>
    <button class="btn btn-primary" type="submit" id="submit">Save</button>
</form>
   
