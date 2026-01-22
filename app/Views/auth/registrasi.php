<?= $this->extend('auth/index') ?>

<?= $this->section('content') ?>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-5">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg">
							<div class="p-5">
								<div class="text-center">
									<h1 class="h4 text-white-50 mb-4"><?= lang('Auth.register') ?></h1>
								</div>
								<?= view('Myth\Auth\Views\_message_block') ?>

								<form action="<?= url_to('register') ?>" method="post">
									<?= csrf_field() ?>
									<div class="form-group">
										<input type="text" class="form-control form-control-user  <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" id="username" name="username"
											placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>">
									</div>
									<div class=" form-group">
										<input type="text" class="form-control form-control-user <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" id="email" name="email"
											placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>">
									</div>
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type="password" class="form-control form-control-user <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>"
												id="password" name="password" placeholder="<?= lang('Auth.password') ?>" autocomplete="off">

										</div>

										<div class=" col-sm-6">
											<input type="password" class="form-control form-control-user <?php if (session('errors.password2')) : ?>is-invalid<?php endif ?>"
												id="pass_confirm" name="pass_confirm"
												placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">

										</div>
									</div>
									<button type="submit" class="btn btn-primary btn-user btn-block">
										<?= lang('Auth.register') ?>
									</button>

									<hr>
									<div class="text-center">
										<a class="medium" href="forgot-password.html">Forgot Password?</a>
									</div>
									<div class="text-center">
										<p style="color: rgb(155, 155, 155);"><?= lang('Auth.alreadyRegistered') ?> <a href="<?= url_to('login') ?>"><?= lang('Auth.signIn') ?></a></p>
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