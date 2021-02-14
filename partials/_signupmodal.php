<!-- Modal -->
<div class="modal fade" id="signupmodal" tabindex="-1" aria-labelledby="signupmodalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signupmodalLabel">Signup to iDiscuss</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="partials/_handlesignup.php" method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1"><span class="fas fa-user"></span> Username</label>
                        <input type="text" class="form-control" id="username" name="username"
                            aria-describedby="emailHelp" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1"><span class="fas fa-key"></span> Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1"><span class="fas fa-key"></span> Confirm Password</label>
                        <input type="password" class="form-control" id="cpassword" name="cpassword"
                            placeholder="Confirm Password" required>
                        <small id="emailHelp" class="form-text text-muted">Make sure to type the same password</small>
                    </div>
                    <button type="submit" class="btn btn-success">Signup</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>