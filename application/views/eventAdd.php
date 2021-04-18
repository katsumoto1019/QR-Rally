<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/dropzone/dropzone.css" />
<script type="text/javascript" src="<?php echo base_url(); ?>assets/dropzone/dropzone.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/dropzone/upload.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-users"></i> イベント登録
            <small>追加/編集</small>
        </h1>
    </section>

    <section class="content">
        <div class="columns">
            <div class="box box-primary">
                <?php $this->load->helper("form"); ?>
                <form id="eventAdd" action="<?php echo base_url() ?>addNewUser" method="post" role="form">

                    <div class="box-body">

                        <div class="col-md-6">

                            <div class="form-group">
                                <label for="eventTitle">タイトル</label>
                                <input type="text" class="form-control required" id="eventTitle" name="eventTitle" maxlength="128" value="<?php echo set_value('eventTitle'); ?>" >
                            </div>

                            <div class="form-group">
                                <label for="eventDate">イベント期間</label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input id="fromDate" type="text" name="fromDate" value="<?php if(!empty($fromDate)) echo $fromDate; else echo ''; ?>" class="form-control datepicker" placeholder="から" autocomplete="off" />
                                            <span class="input-group-addon"><label for="fromDate"><i class="fa fa-calendar"></i></label></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input id="toDate" type="text" name="toDate" value="<?php if(!empty($toDate)) echo $toDate; else echo ''; ?>" class="form-control datepicker" placeholder="まで" autocomplete="off" />
                                            <span class="input-group-addon"><label for="fromDate"><i class="fa fa-calendar"></i></label></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="eventTitle">オリジナル1</label>
                                        <div class="dropzone">
                                            <div class="dz-message needsclick">
                                                <span>オリジナル画像の選択</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="eventTitle">間違い絵1</label>
                                        <div class="dropzone">
                                            <div class="dz-message needsclick">
                                                <span>間違い絵選択</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </section>

</div>
<script src="<?php echo base_url(); ?>assets/js/addUser.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/locales/bootstrap-datepicker.ja.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('.datepicker').datepicker({
            autoclose: true,
            format : "yyyy-mm-dd",
            language: "ja"
        });
        jQuery('.resetFilters').click(function(){
            $(this).closest('form').find("input[type=text]").val("");
        })
    });
</script>