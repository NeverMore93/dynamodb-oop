<!DOCTYPE html>
<html>
  <head>
	<meta charset='utf-8'>
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="/dynamodb-oop/stylesheets/stylesheet.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/dynamodb-oop/stylesheets/pygment_trac.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/dynamodb-oop/stylesheets/print.css" media="print">
	<link rel="stylesheet" type="text/css" href="/dynamodb-oop/stylesheets/tree.css">





	<script src="https://sdk.amazonaws.com/js/aws-sdk-2.247.1.min.js"></script>
	<script src="https://cdn.rawgit.com/awspilot/dynamodb-oop/785f4265/dist/dynamodbjs.js"></script>


	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ace.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/mode-javascript.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/mode-sql.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/mode-html.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/theme-twilight.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/theme-monokai.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/theme-iplastic.js"></script>
	<!-- <script src="https://rawgit.com/databank/ui-dynamodb/master/public/js/bundle.js"></script> -->


	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<title>AWSPilot DynamoDB module for nodejs</title>



	<style>
	.code {font-size: 13px;line-height: 22px;white-space: pre;}
	</style>

  </head>

<body>
	<header>
		<div class="inner">
			<h1><b>@AwsPilot</b>'s DynamoDB</h1>

			<!--
				<a href="https://www.npmjs.com/package/@awspilot/dynamodb" class="button"><img src="https://nodei.co/npm/@awspilot/dynamodb.png?downloads=true" alt="npm page"></a>
			-->
		</div>
	</header>

    <div id="content-wrapper">




        <aside id="sidebar">










<ul class="tree">
<li><span class="tree_label"><a href="/dynamodb-oop/">Home</a></span>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/install/">Install</a></span>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/init/">Include</a></span>




<li><span class="tree_label"><a href="/dynamodb-oop/pages/insert/">Insert ( no update )</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/insert-or-update/">Insert or Update</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/insert-or-replace/">Insert or Replace</a>	
<li><span class="tree_label"><a href="/dynamodb-oop/pages/batch-insert/">Batch Insert</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/update/">Update ( existing item )</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/replace/">Replace</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/delete/">Delete</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/get/">Get</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/query/">Query</a>
<li><span class="tree_label"><a href="/dynamodb-oop/pages/scan/">Scan</a>




<!--
<li>
	<input type="checkbox" id="treeops" />
	
	

	<label class="tree_label sub" for="treeops">Operations</label>
	<ul>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/insert/">Insert</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/update/">Update</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/replace/">Replace</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/delete/">Delete</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/get/">Get</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/query/">Query</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/scan/">Scan</a>
	</ul>
-->


<li>
	<input type="checkbox" id="treemisc" />
	<label class="tree_label sub" for="treemisc">Misc</label>
	<ul>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/datatypes/">Data Types</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/raw_calls/">Raw Calls</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/capacity/">Consumed Capacity</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/deprecated/">Deprecated</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/error/">Error Feed</a>
		<li><span class="tree_label"><a href="/dynamodb-oop/pages/test/">Test</a><span>
	</ul>

<li><span class="tree_label"><a href="/dynamodb-oop/pages/disqus/">Disqus</a></span>

</ul>

        </aside>




        <section id="main-content">{{{content}}}</section>
		<!-- sidebar -->


    </div>

<a href="https://github.com/awspilot/dynamodb-oop"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/652c5b9acfaddf3a9c326fa6bde407b87f7be0f4/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png"></a>


<script>
$(function() {

	$('.code').each(function() {
		var $newid = 'ace-' + Math.random()
		$(this).attr('id', $newid).height( $(this).height() + 24 )
		var $e = ace.edit($newid)
		if ($(this).hasClass('bash')) {
			
		} else if ($(this).hasClass('sql')) {
			$e.getSession().setMode("ace/mode/sql")
		} else if ($(this).hasClass('html')) {
			$e.getSession().setMode("ace/mode/html")
		} else {
			$e.getSession().setMode("ace/mode/javascript")
		}
		
		if ($(this).hasClass('github'))
			$e.setTheme("ace/theme/github")
		else
			$e.setTheme("ace/theme/monokai")
		

		$e.setReadOnly(true)
		$e.setShowPrintMargin(false)
	})
});
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119179002-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-119179002-1');
</script>

  </body>
</html>
