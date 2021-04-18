<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> ユーザー管理
            <small>追加/編集</small>
        </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">ユーザーの詳細情報を入力してください。</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form id="addUser" action="<?php echo base_url() ?>addNewUser" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="fname">ユーザー名</label>
                                        <input type="text" class="form-control required" id="fname" name="fname" maxlength="128" value="<?php echo set_value('fname'); ?>" placeholder="ユーザー名を入力してください。">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">メールアドレス</label>
                                        <input type="text" class="form-control required email" id="email" name="email" maxlength="128"
                                               value="<?php echo set_value('email'); ?>" placeholder="メールアドレスを入力してください。">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password">パスワード</label>
                                        <input type="password" class="form-control required" id="password" name="password" maxlength="20" placeholder="パスワードを入力してください。">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="cpassword">パスワードの確認</label>
                                        <input type="password" class="form-control required equalTo" id="cpassword" name="cpassword" maxlength="20" placeholder="パスワードを再入力してください。">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="mobile">電話番号</label>
                                        <input type="text" class="form-control digits" id="mobile" name="mobile" maxlength="10"
                                               value="<?php echo set_value('mobile'); ?>" placeholder="電話番号入力してください。">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="role">役割</label>
                                        <select class="form-control required" id="role" name="role">
                                            <option value="0">選択してください。</option>
                                            <?php
                                            if (!empty($roles)) {
                                                foreach ($roles as $rl) {
                                                    ?>
                                                    <option value="<?php echo $rl->roleId ?>" <?php if ($rl->roleId == set_value('role')) {
                                                        echo "selected=selected";
                                                    } ?>><?php echo $rl->role ?></option>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="登録"/>
                            <input type="reset" class="btn btn-default" value="リセット"/>
                        </div>
                    </form>
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

                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<script src="<?php echo base_url(); ?>assets/js/addUser.js" type="text/javascript"></script>