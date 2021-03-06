			    <?php //$user_info = $this->display_model->get_user($user);
				//echo $user_info['name'].' | '.$user_info['email'].' | '.$user_info['number'].' | '.$user_info['visacard'].' | ';

				?>
				<!--div class="row">
				<div class="col-lg-6">
				<span class="user-info"><strong>Name: </strong><?php //echo $user_info['name']; ?></span></br>
				<span class="user-info"><strong>Email:</strong> <?php //echo $user_info['email']; ?></span></br>
				<span class="user-info"><strong>Phone Number:</strong> <?php //echo $user_info['number']; ?></span></br>
				</div>
				<div class="col-lg-6">
				<span class="user-info"><strong>VISA CARD NUMBER:</strong> <?php //echo $user_info['visacard']; ?></span></br>
				<?php //if ($this->session->userdata('user_type') == 'admin' || $this->session->userdata('user_type') == 'superadmin') { ?>
				<span class="user-info"><a class="btn btn-info" href="<?php //echo base_url(); ?>investments/new/<?php //echo $user; ?>">New Investment</a></span>
				<?php //} ?>				</div>

			</div-->
					<div class="row">
						<div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <i class="fa fa-align-justify"></i> Investments Reports
                                </div>
                                <div class="card-body">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Client Name</th>
												<th>Contract Date</th>
												<th>Amount</th>
                                                <th>Package</th>
                                                <th>Duration</th>
                                                <th>Interest</th>
												<th>Monthly Dividend</th>
												<th>Status</th>
												<th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php if ($investments === FALSE): ?>

											<h3>No Investments</h3>
										<?php else: ?>

										<?php foreach($investments as $investment) :
											$client_info = $this->display_model->get_user($investment['client_id']); ?>
                                            <tr>
												<td><a href="<?php echo "user_investments/".$investment['client_id']; ?>"><?php echo $client_info['name']; ?></a></td>
												<td><strong><?php echo date( 'd-m-Y', strtotime($investment['starting_date']));  ?></strong></td>
                                                <td><strong><?php echo number_format($investment['amount'], 0, ',', ' ');  ?> F</strong></td>
                                                <td><strong><?php if($investment['package_type'] == '3') {echo 'PREMIUM';}
																								else if($investment['package_type'] == '2') {echo 'ULTIMATE';}
																								else { echo $investment['package_type'];}  ?></strong></td>
                                                <td><strong><?php echo $investment['duration'].' Months';  ?></strong></td>
												<td><strong><?php echo $investment['interest'].'%';  ?></strong></td>
												<td><strong><?php echo (($investment['interest']*$investment['amount'])/100).' F';  ?></strong></td>
                                                <td>
												<?php if($investment['validity'] == 1) { ?>
                                                    <span class="badge badge-success">Active</span>
												<?php } else { ?>
													<?php if($this->session->userdata('user_right') < 3) { ?>
													<span class="badge badge-warning">Pending Approval</span>
													<?php } else { ?>
													<a href="<?php echo base_url(); ?>investments/approveInvestment/<?php echo $investment['id']; ?>"><span class="badge badge-warning">Pending Approval</span></a>
												<?php } } ?>
                                                </td>
												<td><a href="<?php echo base_url(); ?>investments/deleteInvestment/<?php echo $investment['id']; ?>">Delete</a></td>
                                            </tr>
										<?php endforeach; ?>
										<?php endif ?>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
						</div>
					</div>
