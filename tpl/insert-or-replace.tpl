	<div class="chrome-tabs">
		<div class="chrome-tabs-content">

			<div class="chrome-tab chrome-tab-current" tabid="tab1">
				<div class="chrome-tab-background">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><symbol id="chrome-tab-geometry-left" viewBox="0 0 214 29" ><path d="M14.3 0.1L214 0.1 214 29 0 29C0 29 12.2 2.6 13.2 1.1 14.3-0.4 14.3 0.1 14.3 0.1Z"/></symbol><symbol id="chrome-tab-geometry-right" viewBox="0 0 214 29"><use xlink:href="#chrome-tab-geometry-left"/></symbol><clipPath id="crop"><rect class="mask" width="100%" height="100%" x="0"/></clipPath></defs><svg width="50%" height="100%"><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-shadow"/></svg><g transform="scale(-1, 1)"><svg width="50%" height="100%" x="-100%" y="0"><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-shadow"/></svg></g></svg>
				</div>
				<div class="chrome-tab-favicon"></div>
				<div class="chrome-tab-title">insert_or_replace.js</div>
				<div class="chrome-tab-close"></div>
			</div>

			<div class="chrome-tab" tabid="tab2">
				<div class="chrome-tab-background" >
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><symbol id="chrome-tab-geometry-left" viewBox="0 0 214 29" ><path d="M14.3 0.1L214 0.1 214 29 0 29C0 29 12.2 2.6 13.2 1.1 14.3-0.4 14.3 0.1 14.3 0.1Z"/></symbol><symbol id="chrome-tab-geometry-right" viewBox="0 0 214 29"><use xlink:href="#chrome-tab-geometry-left"/></symbol><clipPath id="crop"><rect class="mask" width="100%" height="100%" x="0"/></clipPath></defs><svg width="50%" height="100%"><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-shadow"/></svg><g transform="scale(-1, 1)"><svg width="50%" height="100%" x="-100%" y="0"><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-shadow"/></svg></g></svg>
				</div>
				<div class="chrome-tab-favicon"></div>
				<div class="chrome-tab-title">insert_or_replace_sql.js</div>
				<div class="chrome-tab-close"></div>
			</div>

		</div>
		<div class="chrome-tabs-bottom-bar"></div>

	</div>

	<script>
		var el = document.querySelector('.chrome-tabs')
		var chromeTabs = new ChromeTabs()

		chromeTabs.init(el, { tabOverlapDistance: 14, minWidth: 45, maxWidth: 243 })

		document.querySelector('.chrome-tabs').addEventListener('activeTabChange', function ( event ) {
			$('.code').css('z-index', 1)
			$('#'  +  $( event.detail.tabEl ).attr('tabid') ).css('z-index', 99)
		})

		//document.querySelector('.chrome-tabs').addEventListener('tabAdd', ({ detail }) => console.log('Tab added', detail.tabEl))
		//document.querySelector('.chrome-tabs').addEventListener('tabRemove', ({ detail }) => console.log('Tab removed', detail.tabEl))




	</script>


<div class="code wide textmate" id="tab1" style="position: absolute;top: 49px;left: 0px;right: 0px;bottom: 0px;z-index: 100;">

	// Insert on Duplicate Item Replace

	DynamoDB
		.table('users')
		.return(DynamoDB.ALL_OLD)
		.insert_or_replace({
			email: 'test@test.com',
			password: 'qwert',
			firstname: 'Smith'
		}, function( err, data ) {

		})

</div>



<div class="code wide textmate" id="tab2" style="position: absolute;top: 49px;left: 0px;right: 0px;bottom: 0px;z-index: 1;">

	// Insert on Duplicate Item Replace
	DynamoDB.query(`

		REPLACE INTO
			users
		SET
			email          =  'test@test.com',

			updated_at     = 1530709469085,
			last_login_at  = null,
			active         = true,
			a_list         = [
				'a',
				1,
				true,
				null
			],
			a_object       = {
				'string': 'text',
				'number': 1,
				'bool'  : true,
				'null'  : null,
			},
			ss = new StringSet(['a','b','c']),
			ns = new NumberSet([1,2,3]),

			/* evaluated to String or Number when parsed  */
			expire_at =  new Date( 1530723266352 ).getTime()

	`, function( err ){

	});

</div>
