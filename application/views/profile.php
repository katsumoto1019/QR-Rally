<?php
$userId = $userInfo->userId;
$name = $userInfo->name;
$email = $userInfo->email;
$mobile = $userInfo->mobile;
$roleId = $userInfo->roleId;
$role = $userInfo->role;
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-user-circle"></i> プロフィール
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
                <!-- general form elements -->


                <div class="box box-warning">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle"
                             src="<?php echo base_url(); ?>assets/dist/img/avatar.png" alt="User profile picture">
                        <h3 class="profile-username text-center"><?= $name ?></h3>

                        <p class="text-muted text-center"><?= $role ?></p>

                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b>メールアドレス</b> <a class="pull-right"><?= $email ?></a>
                            </li>
                            <li class="list-group-item">
                                <b>電話番号</b> <a class="pull-right"><?= $mobile ?></a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="col-md-5">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="<?= ($active == "details") ? "active" : "" ?>"><a href="#details" data-toggle="tab">詳細情報</a>
                        </li>
                        <li class="<?= ($active == "changepass") ? "active" : "" ?>"><a href="#changepass" data-toggle="tab">パスワード変更</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="<?= ($active == "details") ? "active" : "" ?> tab-pane" id="details">
                            <form action="<?php echo base_url() ?>profileUpdate" method="post" id="editProfile"
                                  role="form">
                                <?php $this->load->helper('form'); ?>
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="fname">ユーザー名</label>
                                                <input type="text" class="form-control" id="fname" name="fname"
                                                       placeholder="<?php echo $name; ?>"
                                                       value="<?php echo set_value('fname', $name); ?>"
                                                       maxlength="128"/>
                                                <input type="hidden" value="<?php echo $userId; ?>" name="userId"
                                                       id="userId"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="mobile">電話番号</label>
                                                <input type="text" class="form-control" id="mobile" name="mobile"
                                                       placeholder="<?php echo $mobile; ?>"
                                                       value="<?php echo set_value('mobile', $mobile); ?>"
                                                       maxlength="10">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="email">メールアドレス</label>
                                                <input type="text" class="form-control" id="email" name="email"
                                                       placeholder="<?php echo $email; ?>"
                                                       value="<?php echo set_value('email', $email); ?>">
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->
                                <div class="box-footer">
                                    <input type="submit" class="btn btn-primary" value="変更"/>
                                    <input type="reset" class="btn btn-default" value="リセット"/>
                                </div>
                            </form>
                        </div>
                        <div class="<?= ($active == "changepass") ? "active" : "" ?> tab-pane" id="changepass">
                            <form role="form" action="<?php echo base_url() ?>changePassword" method="post">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="inputPassword1">現在パスワード</label>
                                                <input type="password" class="form-control" id="inputOldPassword"
                                                       placeholder="現在パスワードを入力してください。" name="oldPassword" maxlength="20"
                                                       required>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="inputPassword1">新しいパスワード</label>
                                                <input type="password" class="form-control" id="inputPassword1"
                                                       placeholder="新しいパスワードを入力してください。" name="newPassword" maxlength="20"
                                                       required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="inputPassword2">新しいパスワード確認</label>
                                                <input type="password" class="form-control" id="inputPassword2"
                                                       placeholder="新しいパスワードを再入力してください。" name="cNewPassword"
                                                       maxlength="20" required>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->

                                <div class="box-footer">
                                    <input type="submit" class="btn btn-primary" value="変更"/>
                                    <input type="reset" class="btn btn-default" value="リセット"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                if ($error) {
                    ?>
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('error'); ?>
                    </div>
                <?php } ?>
                <?php
                $success = $this->session->flashdata('success');
                if ($success) {
                    ?>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('success'); ?>
                    </div>
                <?php } ?>

                <?php
                $noMatch = $this->session->flashdata('nomatch');
                if ($noMatch) {
                    ?>
                    <div class="alert alert-warning alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('nomatch'); ?>
                    </div>
                <?php } ?>

                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>