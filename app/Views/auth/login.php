<?= $this->extend('auth/index') ?>

<?= $this->section('content') ?>

<div class="container">

	<!-- Outer Row -->
	<div class="row justify-content-center">

		<div class="col-lg-5">

			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<!--div class="col-lg-6 d-none d-lg-block bg-login-image"</div-->
						<div class="col-lg">
							<div class="p-5">
								<div class="text-center">
									<h1 class="h4 text-white-50 mb-4"><?= lang('Auth.loginTitle') ?></h1>
								</div>
								<?= view('Myth\Auth\Views\_message_block') ?>
								<form action="<?= base_url('login') ?>" method="post">
									<?= csrf_field() ?>

									<div class="form-group">
										<input type="email" class="form-control form-control-user <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
											id="login" name="login"
											placeholder="<?= lang('Auth.email') ?>">
										<div class="invalid-feedback">
											<?= session('errors.login') ?>
										</div>
									</div>
									<div class="form-group">
										<input type="password" class="form-control form-control-user <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" id="password" name="password" placeholder="<?= lang('Auth.password') ?>">
									</div>
									<div class="invalid-feedback">
										<?= session('errors.password') ?>
									</div>

									<button type="" class="btn btn-primary btn-user btn-block">
										<?= lang('Auth.loginAction') ?>
									</button>



									<hr>
									<div class="text-center">
										<!--a class="small" href="forgot-password.html">Forgot Password?</a-->
										<p><a href="<?= base_url('forgot') ?>"><?= lang('Auth.forgotYourPassword') ?></a></p>

									</div>
									<div class="text-center">
										<!--a class="small" href="<?= base_url('register') ?>">Create an Account!</a-->
										<p><a href="<?= base_url('register') ?>"><?= lang('Auth.needAnAccount') ?></a></p>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

<?= $this->endSection() ?>