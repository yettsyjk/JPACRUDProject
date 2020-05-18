<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient CRM | mapCard</title>
</head>
<body>
	<div class="container">
		<!-- Card -->
		<div class="card map-card">

			<!--Google map-->
			<div id="map-container-google-1" class="z-depth-1-half map-container"
				style="height: 180px">
				<iframe
					src="https://maps.google.com/maps?q=denver&t=&z=13&ie=UTF8&iwloc=&output=embed"
					frameborder="0" style="border: 0" allowfullscreen width="700" height="210"></iframe>
			</div>

			<!-- Card content -->
			<div class="card-body closed px-0">

				<div class="button px-2 mt-3">
					<a class="btn-floating btn-lg living-coral float-right"><i
						class="fas fa-hospital"></i></a>
				</div>

				<div class="white px-4 pb-4 pt-3-5">

					<!-- Title -->
					<h5 class="card-title h5 living-coral-text">Patient CRM</h5>

					<div class="d-flex justify-content-between living-coral-text">
						<h6 class="card-subtitle font-weight-light">Not A Real
							Hospital</h6>
						<h6 class="font-small font-weight-light mt-n1">Guide within
							25 min</h6>
					</div>

					<hr>

					<div
						class="d-flex justify-content-between pt-2 mt-1 text-center text-uppercase living-coral-text">
						<div>
							<i class="fas fa-cat fa-lg mb-3"></i>
							<p class="mb-0">Health</p>
						</div>
						<div>
							<i class="far fa-grin-beam-sweat fa-lg mb-3"></i>
							<p class="mb-0">Nutrition</p>
						</div>
					</div>

					<hr>

					<table class="table table-borderless">
						<tbody>
							<tr>
								<th scope="row" class="px-0 pb-3 pt-2"><i
									class="fas fa-map-marker-alt living-coral-text"></i></th>
								<td class="pb-3 pt-2">Denver, CO US</td>
							</tr>
							<tr class="mt-2">
								<th scope="row" class="px-0 pb-3 pt-2"><i
									class="far fa-clock living-coral-text"></i></th>
								<td class="pb-3 pt-2"><span class="deep-purple-text mr-2">Open</span>
									Hospital Map</td>
							</tr>
							<tr class="mt-2">
								<th scope="row" class="px-0 pb-3 pt-2"><i
									class="fas fa-cloud-moon living-coral-text"></i></th>
								<td class="pb-3 pt-2">Guide Patient To Arium Hospital(Not A Real Hospital)</td>
							</tr>
						</tbody>
					</table>

				</div>

			</div>

		</div>
	</div>
	<!-- Card -->
</body>
</html>