<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "news".
 *
 * Auto generated | Identifier: 3dbf362a84bffd9072e3056ad7667288
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array (
	'title' => 'News system',
	'description' => 'Versatile news extension, based on extbase & fluid. Editor friendly, default integration of social sharing and many other features',
	'category' => 'fe',
	'author' => 'Georg Ringer',
	'author_email' => 'typo3@ringerge.org',
	'state' => 'stable',
	'uploadfolder' => true,
	'clearCacheOnLoad' => 1,
	'author_company' => '',
	'version' => '5.2.0',
	'constraints' => 
	array (
		'depends' => 
		array (
			'typo3' => '7.6.0-8.9.99',
		),
		'conflicts' => 
		array (
		),
		'suggests' => 
		array (
			'dd_googlesitemap' => '2.0.5-2.99.99',
			'rx_shariff' => '7.0.0-7.99.99',
		),
	),
	'createDirs' => NULL,
	'clearcacheonload' => true,
	'_md5_values_when_last_written' => 'a:497:{s:6:"Build/";s:4:"d41d";s:13:"Build/.php_cs";s:4:"4f72";s:15:"CONTRIBUTING.md";s:4:"eb05";s:8:"Classes/";s:4:"d41d";s:16:"Classes/Backend/";s:4:"d41d";s:33:"Classes/Backend/FormDataProvider/";s:4:"d41d";s:57:"Classes/Backend/FormDataProvider/NewsRowInitializeNew.php";s:4:"731a";s:27:"Classes/Backend/RecordList/";s:4:"d41d";s:53:"Classes/Backend/RecordList/NewsDatabaseRecordList.php";s:4:"b6b6";s:51:"Classes/Backend/RecordList/RecordListConstraint.php";s:4:"77bf";s:31:"Classes/Backend/TagEndPoint.php";s:4:"2bf7";s:19:"Classes/Controller/";s:4:"d41d";s:47:"Classes/Controller/AdministrationController.php";s:4:"2f9d";s:41:"Classes/Controller/CategoryController.php";s:4:"e399";s:39:"Classes/Controller/ImportController.php";s:4:"f9e2";s:41:"Classes/Controller/NewsBaseController.php";s:4:"ad54";s:37:"Classes/Controller/NewsController.php";s:4:"6324";s:36:"Classes/Controller/TagController.php";s:4:"eda0";s:15:"Classes/Domain/";s:4:"d41d";s:21:"Classes/Domain/Model/";s:4:"d41d";s:33:"Classes/Domain/Model/Category.php";s:4:"b519";s:40:"Classes/Domain/Model/DemandInterface.php";s:4:"fa9c";s:25:"Classes/Domain/Model/Dto/";s:4:"d41d";s:49:"Classes/Domain/Model/Dto/AdministrationDemand.php";s:4:"f396";s:44:"Classes/Domain/Model/Dto/EmConfiguration.php";s:4:"7da6";s:39:"Classes/Domain/Model/Dto/NewsDemand.php";s:4:"7c10";s:35:"Classes/Domain/Model/Dto/Search.php";s:4:"c189";s:38:"Classes/Domain/Model/FileReference.php";s:4:"61ca";s:29:"Classes/Domain/Model/Link.php";s:4:"3a92";s:29:"Classes/Domain/Model/News.php";s:4:"0e3b";s:36:"Classes/Domain/Model/NewsDefault.php";s:4:"3f13";s:37:"Classes/Domain/Model/NewsExternal.php";s:4:"d7d3";s:37:"Classes/Domain/Model/NewsInternal.php";s:4:"6ccb";s:28:"Classes/Domain/Model/Tag.php";s:4:"80a2";s:34:"Classes/Domain/Model/TtContent.php";s:4:"1d3d";s:26:"Classes/Domain/Repository/";s:4:"d41d";s:56:"Classes/Domain/Repository/AbstractDemandedRepository.php";s:4:"04d4";s:48:"Classes/Domain/Repository/CategoryRepository.php";s:4:"5fe2";s:57:"Classes/Domain/Repository/DemandedRepositoryInterface.php";s:4:"e9c2";s:44:"Classes/Domain/Repository/FileRepository.php";s:4:"d3f2";s:44:"Classes/Domain/Repository/LinkRepository.php";s:4:"7a07";s:45:"Classes/Domain/Repository/MediaRepository.php";s:4:"9390";s:51:"Classes/Domain/Repository/NewsDefaultRepository.php";s:4:"bbca";s:44:"Classes/Domain/Repository/NewsRepository.php";s:4:"f5fa";s:43:"Classes/Domain/Repository/TagRepository.php";s:4:"1018";s:49:"Classes/Domain/Repository/TtContentRepository.php";s:4:"3adf";s:23:"Classes/Domain/Service/";s:4:"d41d";s:48:"Classes/Domain/Service/AbstractImportService.php";s:4:"9c0c";s:48:"Classes/Domain/Service/CategoryImportService.php";s:4:"87f6";s:44:"Classes/Domain/Service/NewsImportService.php";s:4:"bf86";s:14:"Classes/Hooks/";s:4:"d41d";s:22:"Classes/Hooks/Backend/";s:4:"d41d";s:45:"Classes/Hooks/Backend/RecordListQueryHook.php";s:4:"4a1f";s:46:"Classes/Hooks/Backend/RecordListQueryHook8.php";s:4:"7a27";s:32:"Classes/Hooks/BackendUtility.php";s:4:"e5e4";s:29:"Classes/Hooks/DataHandler.php";s:4:"d4c8";s:28:"Classes/Hooks/FormEngine.php";s:4:"a5c5";s:35:"Classes/Hooks/InlineElementHook.php";s:4:"99c8";s:31:"Classes/Hooks/ItemsProcFunc.php";s:4:"8d61";s:24:"Classes/Hooks/Labels.php";s:4:"a8c2";s:32:"Classes/Hooks/PageLayoutView.php";s:4:"ca15";s:42:"Classes/Hooks/RealUrlAutoConfiguration.php";s:4:"eb99";s:33:"Classes/Hooks/SuggestReceiver.php";s:4:"3da6";s:40:"Classes/Hooks/TxNewsSitemapGenerator.php";s:4:"d42f";s:13:"Classes/Jobs/";s:4:"d41d";s:34:"Classes/Jobs/AbstractImportJob.php";s:4:"c0dc";s:35:"Classes/Jobs/ImportJobInterface.php";s:4:"5894";s:16:"Classes/Service/";s:4:"d41d";s:40:"Classes/Service/AccessControlService.php";s:4:"eb52";s:35:"Classes/Service/CategoryService.php";s:4:"b6af";s:23:"Classes/Service/Import/";s:4:"d41d";s:55:"Classes/Service/Import/DataProviderServiceInterface.php";s:4:"f5ee";s:35:"Classes/Service/SettingsService.php";s:4:"e2b4";s:21:"Classes/TreeProvider/";s:4:"d41d";s:49:"Classes/TreeProvider/DatabaseTreeDataProvider.php";s:4:"25e5";s:16:"Classes/Utility/";s:4:"d41d";s:25:"Classes/Utility/Cache.php";s:4:"389e";s:37:"Classes/Utility/ClassCacheManager.php";s:4:"145d";s:31:"Classes/Utility/ClassLoader.php";s:4:"faf4";s:31:"Classes/Utility/ClassParser.php";s:4:"8f83";s:36:"Classes/Utility/ConstraintHelper.php";s:4:"6bdb";s:35:"Classes/Utility/EmConfiguration.php";s:4:"6cc3";s:29:"Classes/Utility/ImportJob.php";s:4:"8424";s:24:"Classes/Utility/Page.php";s:4:"d355";s:34:"Classes/Utility/TemplateLayout.php";s:4:"d535";s:30:"Classes/Utility/TypoScript.php";s:4:"ade4";s:23:"Classes/Utility/Url.php";s:4:"8688";s:30:"Classes/Utility/Validation.php";s:4:"90e3";s:20:"Classes/ViewHelpers/";s:4:"d41d";s:23:"Classes/ViewHelpers/Be/";s:4:"d41d";s:53:"Classes/ViewHelpers/Be/IsCheckboxActiveViewHelper.php";s:4:"bc34";s:54:"Classes/ViewHelpers/ExcludeDisplayedNewsViewHelper.php";s:4:"8790";s:49:"Classes/ViewHelpers/ExtensionLoadedViewHelper.php";s:4:"a5a9";s:27:"Classes/ViewHelpers/Format/";s:4:"d41d";s:48:"Classes/ViewHelpers/Format/NothingViewHelper.php";s:4:"fc67";s:44:"Classes/ViewHelpers/HeaderDataViewHelper.php";s:4:"d824";s:44:"Classes/ViewHelpers/IfIsActiveViewHelper.php";s:4:"421a";s:43:"Classes/ViewHelpers/ImageSizeViewHelper.php";s:4:"98d2";s:45:"Classes/ViewHelpers/IncludeFileViewHelper.php";s:4:"f5bc";s:38:"Classes/ViewHelpers/LinkViewHelper.php";s:4:"0e96";s:41:"Classes/ViewHelpers/MetaTagViewHelper.php";s:4:"8449";s:40:"Classes/ViewHelpers/ObjectViewHelper.php";s:4:"bfe2";s:50:"Classes/ViewHelpers/PaginateBodytextViewHelper.php";s:4:"a30b";s:48:"Classes/ViewHelpers/SimplePrevNextViewHelper.php";s:4:"8e2e";s:27:"Classes/ViewHelpers/Social/";s:4:"d41d";s:47:"Classes/ViewHelpers/Social/DisqusViewHelper.php";s:4:"73c5";s:36:"Classes/ViewHelpers/Social/Facebook/";s:4:"d41d";s:57:"Classes/ViewHelpers/Social/Facebook/CommentViewHelper.php";s:4:"7b96";s:54:"Classes/ViewHelpers/Social/Facebook/LikeViewHelper.php";s:4:"d3da";s:55:"Classes/ViewHelpers/Social/Facebook/ShareViewHelper.php";s:4:"5714";s:51:"Classes/ViewHelpers/Social/GooglePlusViewHelper.php";s:4:"646c";s:49:"Classes/ViewHelpers/Social/GravatarViewHelper.php";s:4:"c23a";s:48:"Classes/ViewHelpers/Social/TwitterViewHelper.php";s:4:"6e26";s:44:"Classes/ViewHelpers/TargetLinkViewHelper.php";s:4:"6dea";s:42:"Classes/ViewHelpers/TitleTagViewHelper.php";s:4:"ed82";s:27:"Classes/ViewHelpers/Widget/";s:4:"d41d";s:38:"Classes/ViewHelpers/Widget/Controller/";s:4:"d41d";s:60:"Classes/ViewHelpers/Widget/Controller/PaginateController.php";s:4:"1769";s:49:"Classes/ViewHelpers/Widget/PaginateViewHelper.php";s:4:"1bec";s:14:"Configuration/";s:4:"d41d";s:22:"Configuration/Backend/";s:4:"d41d";s:36:"Configuration/Backend/AjaxRoutes.php";s:4:"2214";s:24:"Configuration/FlexForms/";s:4:"d41d";s:41:"Configuration/FlexForms/flexform_news.xml";s:4:"4b89";s:18:"Configuration/TCA/";s:4:"d41d";s:28:"Configuration/TCA/Overrides/";s:4:"d41d";s:37:"Configuration/TCA/Overrides/pages.php";s:4:"5aa2";s:44:"Configuration/TCA/Overrides/sys_category.php";s:4:"5326";s:50:"Configuration/TCA/Overrides/sys_file_reference.php";s:4:"7a6d";s:42:"Configuration/TCA/Overrides/tt_content.php";s:4:"3592";s:47:"Configuration/TCA/tx_news_domain_model_link.php";s:4:"67c8";s:47:"Configuration/TCA/tx_news_domain_model_news.php";s:4:"294d";s:46:"Configuration/TCA/tx_news_domain_model_tag.php";s:4:"f770";s:23:"Configuration/TSconfig/";s:4:"d41d";s:47:"Configuration/TSconfig/ContentElementWizard.txt";s:4:"e97e";s:28:"Configuration/TSconfig/Page/";s:4:"d41d";s:49:"Configuration/TSconfig/Page/mod.linkvalidator.txt";s:4:"273e";s:41:"Configuration/TSconfig/Page/news_only.txt";s:4:"efa5";s:25:"Configuration/TypoScript/";s:4:"d41d";s:33:"Configuration/TypoScript/Sitemap/";s:4:"d41d";s:46:"Configuration/TypoScript/Sitemap/constants.txt";s:4:"ed75";s:42:"Configuration/TypoScript/Sitemap/setup.txt";s:4:"c344";s:32:"Configuration/TypoScript/Styles/";s:4:"d41d";s:36:"Configuration/TypoScript/Styles/Twb/";s:4:"d41d";s:49:"Configuration/TypoScript/Styles/Twb/constants.txt";s:4:"a689";s:45:"Configuration/TypoScript/Styles/Twb/setup.txt";s:4:"be56";s:38:"Configuration/TypoScript/constants.txt";s:4:"22e9";s:34:"Configuration/TypoScript/setup.txt";s:4:"d36c";s:14:"Documentation/";s:4:"d41d";s:34:"Documentation/AdministratorManual/";s:4:"d41d";s:47:"Documentation/AdministratorManual/BestPractice/";s:4:"d41d";s:58:"Documentation/AdministratorManual/BestPractice/ClearCache/";s:4:"d41d";s:67:"Documentation/AdministratorManual/BestPractice/ClearCache/Index.rst";s:4:"1143";s:57:"Documentation/AdministratorManual/BestPractice/ICalendar/";s:4:"d41d";s:66:"Documentation/AdministratorManual/BestPractice/ICalendar/Index.rst";s:4:"c31d";s:56:"Documentation/AdministratorManual/BestPractice/Index.rst";s:4:"b910";s:73:"Documentation/AdministratorManual/BestPractice/IntegrationWithTypoScript/";s:4:"d41d";s:82:"Documentation/AdministratorManual/BestPractice/IntegrationWithTypoScript/Index.rst";s:4:"e5b6";s:65:"Documentation/AdministratorManual/BestPractice/MigrateFromTtNews/";s:4:"d41d";s:74:"Documentation/AdministratorManual/BestPractice/MigrateFromTtNews/Index.rst";s:4:"7d36";s:63:"Documentation/AdministratorManual/BestPractice/PredefineFields/";s:4:"d41d";s:72:"Documentation/AdministratorManual/BestPractice/PredefineFields/Index.rst";s:4:"481f";s:63:"Documentation/AdministratorManual/BestPractice/PreviewOfRecord/";s:4:"d41d";s:72:"Documentation/AdministratorManual/BestPractice/PreviewOfRecord/Index.rst";s:4:"e9e3";s:55:"Documentation/AdministratorManual/BestPractice/Realurl/";s:4:"d41d";s:64:"Documentation/AdministratorManual/BestPractice/Realurl/Index.rst";s:4:"5146";s:51:"Documentation/AdministratorManual/BestPractice/Rss/";s:4:"d41d";s:60:"Documentation/AdministratorManual/BestPractice/Rss/Index.rst";s:4:"f84c";s:74:"Documentation/AdministratorManual/BestPractice/SitemapWithDdGoogleSitemap/";s:4:"d41d";s:83:"Documentation/AdministratorManual/BestPractice/SitemapWithDdGoogleSitemap/Index.rst";s:4:"a6a0";s:48:"Documentation/AdministratorManual/Configuration/";s:4:"d41d";s:65:"Documentation/AdministratorManual/Configuration/ExtensionManager/";s:4:"d41d";s:74:"Documentation/AdministratorManual/Configuration/ExtensionManager/Index.rst";s:4:"ce37";s:57:"Documentation/AdministratorManual/Configuration/Index.rst";s:4:"7654";s:57:"Documentation/AdministratorManual/Configuration/TsConfig/";s:4:"d41d";s:66:"Documentation/AdministratorManual/Configuration/TsConfig/Index.rst";s:4:"cf0b";s:59:"Documentation/AdministratorManual/Configuration/TypoScript/";s:4:"d41d";s:68:"Documentation/AdministratorManual/Configuration/TypoScript/Index.rst";s:4:"76c0";s:43:"Documentation/AdministratorManual/Index.rst";s:4:"451d";s:47:"Documentation/AdministratorManual/Installation/";s:4:"d41d";s:56:"Documentation/AdministratorManual/Installation/Index.rst";s:4:"2a4b";s:44:"Documentation/AdministratorManual/Migration/";s:4:"d41d";s:53:"Documentation/AdministratorManual/Migration/Index.rst";s:4:"f701";s:64:"Documentation/AdministratorManual/Migration/MigrationFromTtNews/";s:4:"d41d";s:73:"Documentation/AdministratorManual/Migration/MigrationFromTtNews/Index.rst";s:4:"d5b8";s:44:"Documentation/AdministratorManual/Templates/";s:4:"d41d";s:53:"Documentation/AdministratorManual/Templates/Index.rst";s:4:"42d8";s:53:"Documentation/AdministratorManual/Templates/Snippets/";s:4:"d41d";s:62:"Documentation/AdministratorManual/Templates/Snippets/Index.rst";s:4:"da05";s:50:"Documentation/AdministratorManual/Templates/Start/";s:4:"d41d";s:59:"Documentation/AdministratorManual/Templates/Start/Index.rst";s:4:"b41d";s:61:"Documentation/AdministratorManual/Templates/TemplateSelector/";s:4:"d41d";s:70:"Documentation/AdministratorManual/Templates/TemplateSelector/Index.rst";s:4:"9cc6";s:61:"Documentation/AdministratorManual/Templates/TwitterBootstrap/";s:4:"d41d";s:70:"Documentation/AdministratorManual/Templates/TwitterBootstrap/Index.rst";s:4:"4899";s:56:"Documentation/AdministratorManual/Templates/ViewHelpers/";s:4:"d41d";s:90:"Documentation/AdministratorManual/Templates/ViewHelpers/ExcludeDisplayedNewsViewHelper.rst";s:4:"341c";s:63:"Documentation/AdministratorManual/Templates/ViewHelpers/Format/";s:4:"d41d";s:84:"Documentation/AdministratorManual/Templates/ViewHelpers/Format/NothingViewHelper.rst";s:4:"7c1f";s:80:"Documentation/AdministratorManual/Templates/ViewHelpers/HeaderDataViewHelper.rst";s:4:"dcd1";s:81:"Documentation/AdministratorManual/Templates/ViewHelpers/IncludeFileViewHelper.rst";s:4:"0c0f";s:65:"Documentation/AdministratorManual/Templates/ViewHelpers/Index.rst";s:4:"a0c1";s:74:"Documentation/AdministratorManual/Templates/ViewHelpers/LinkViewHelper.rst";s:4:"670f";s:82:"Documentation/AdministratorManual/Templates/ViewHelpers/MediaFactoryViewHelper.rst";s:4:"98b0";s:77:"Documentation/AdministratorManual/Templates/ViewHelpers/MetaTagViewHelper.rst";s:4:"5514";s:76:"Documentation/AdministratorManual/Templates/ViewHelpers/ObjectViewHelper.rst";s:4:"d3e5";s:86:"Documentation/AdministratorManual/Templates/ViewHelpers/PaginateBodytextViewHelper.rst";s:4:"9a88";s:63:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/";s:4:"d41d";s:83:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/DisqusViewHelper.rst";s:4:"7a54";s:72:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/Facebook/";s:4:"d41d";s:93:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/Facebook/CommentViewHelper.rst";s:4:"df26";s:90:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/Facebook/LikeViewHelper.rst";s:4:"e66e";s:91:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/Facebook/ShareViewHelper.rst";s:4:"da0a";s:87:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/GooglePlusViewHelper.rst";s:4:"65e4";s:85:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/GravatarViewHelper.rst";s:4:"dcd2";s:84:"Documentation/AdministratorManual/Templates/ViewHelpers/Social/TwitterViewHelper.rst";s:4:"d077";s:80:"Documentation/AdministratorManual/Templates/ViewHelpers/TargetLinkViewHelper.rst";s:4:"8d7a";s:78:"Documentation/AdministratorManual/Templates/ViewHelpers/TitleTagViewHelper.rst";s:4:"14db";s:63:"Documentation/AdministratorManual/Templates/ViewHelpers/Widget/";s:4:"d41d";s:85:"Documentation/AdministratorManual/Templates/ViewHelpers/Widget/PaginateViewHelper.rst";s:4:"705c";s:41:"Documentation/AdministratorManual/Update/";s:4:"d41d";s:50:"Documentation/AdministratorManual/Update/Index.rst";s:4:"b3cd";s:30:"Documentation/DeveloperManual/";s:4:"d41d";s:41:"Documentation/DeveloperManual/Contribute/";s:4:"d41d";s:50:"Documentation/DeveloperManual/Contribute/Index.rst";s:4:"e458";s:41:"Documentation/DeveloperManual/ExtendNews/";s:4:"d41d";s:57:"Documentation/DeveloperManual/ExtendNews/ExtendFlexforms/";s:4:"d41d";s:66:"Documentation/DeveloperManual/ExtendNews/ExtendFlexforms/Index.rst";s:4:"9aac";s:54:"Documentation/DeveloperManual/ExtendNews/HooksSignals/";s:4:"d41d";s:63:"Documentation/DeveloperManual/ExtendNews/HooksSignals/Index.rst";s:4:"f6d8";s:50:"Documentation/DeveloperManual/ExtendNews/Index.rst";s:4:"e599";s:61:"Documentation/DeveloperManual/ExtendNews/ProxyClassGenerator/";s:4:"d41d";s:70:"Documentation/DeveloperManual/ExtendNews/ProxyClassGenerator/Index.rst";s:4:"ad89";s:39:"Documentation/DeveloperManual/Index.rst";s:4:"2a55";s:21:"Documentation/Images/";s:4:"d41d";s:36:"Documentation/Images/Administration/";s:4:"d41d";s:63:"Documentation/Images/Administration/news-include-TypoScript.png";s:4:"f08b";s:55:"Documentation/Images/Administration/record-category.png";s:4:"fbd2";s:50:"Documentation/Images/Administration/record-tag.png";s:4:"9d1b";s:26:"Documentation/Includes.txt";s:4:"8dfb";s:23:"Documentation/Index.rst";s:4:"4950";s:27:"Documentation/Introduction/";s:4:"d41d";s:33:"Documentation/Introduction/About/";s:4:"d41d";s:42:"Documentation/Introduction/About/Index.rst";s:4:"c15e";s:36:"Documentation/Introduction/Index.rst";s:4:"884d";s:35:"Documentation/Introduction/Support/";s:4:"d41d";s:44:"Documentation/Introduction/Support/Index.rst";s:4:"918b";s:34:"Documentation/Introduction/Thanks/";s:4:"d41d";s:43:"Documentation/Introduction/Thanks/Index.rst";s:4:"0a2e";s:19:"Documentation/Misc/";s:4:"d41d";s:29:"Documentation/Misc/Changelog/";s:4:"d41d";s:38:"Documentation/Misc/Changelog/2-1-0.rst";s:4:"e2db";s:38:"Documentation/Misc/Changelog/2-2-0.rst";s:4:"ce59";s:38:"Documentation/Misc/Changelog/2-2-1.rst";s:4:"f13d";s:38:"Documentation/Misc/Changelog/2-3-0.rst";s:4:"b2a7";s:38:"Documentation/Misc/Changelog/3-0-0.rst";s:4:"46c1";s:38:"Documentation/Misc/Changelog/3-0-1.rst";s:4:"8e33";s:38:"Documentation/Misc/Changelog/3-1-0.rst";s:4:"6050";s:38:"Documentation/Misc/Changelog/3-2-0.rst";s:4:"8c23";s:38:"Documentation/Misc/Changelog/3-2-1.rst";s:4:"2702";s:38:"Documentation/Misc/Changelog/3-2-2.rst";s:4:"8616";s:38:"Documentation/Misc/Changelog/3-2-3.rst";s:4:"836b";s:38:"Documentation/Misc/Changelog/3-2-4.rst";s:4:"e386";s:38:"Documentation/Misc/Changelog/3-2-5.rst";s:4:"b67a";s:38:"Documentation/Misc/Changelog/3-2-6.rst";s:4:"3936";s:38:"Documentation/Misc/Changelog/4-0-0.rst";s:4:"be46";s:38:"Documentation/Misc/Changelog/4-1-0.rst";s:4:"3332";s:38:"Documentation/Misc/Changelog/4-2-0.rst";s:4:"65b9";s:38:"Documentation/Misc/Changelog/4-2-1.rst";s:4:"5da6";s:38:"Documentation/Misc/Changelog/4-3-0.rst";s:4:"248a";s:38:"Documentation/Misc/Changelog/5-0-0.rst";s:4:"9aff";s:38:"Documentation/Misc/Changelog/5-1-0.rst";s:4:"b716";s:38:"Documentation/Misc/Changelog/5-2-0.rst";s:4:"c8bb";s:38:"Documentation/Misc/Changelog/Index.rst";s:4:"ad82";s:45:"Documentation/Misc/DocumentationBestPractice/";s:4:"d41d";s:55:"Documentation/Misc/DocumentationBestPractice/CrossLink/";s:4:"d41d";s:64:"Documentation/Misc/DocumentationBestPractice/CrossLink/Index.rst";s:4:"9d2b";s:54:"Documentation/Misc/DocumentationBestPractice/Examples/";s:4:"d41d";s:63:"Documentation/Misc/DocumentationBestPractice/Examples/Index.rst";s:4:"acaa";s:54:"Documentation/Misc/DocumentationBestPractice/Index.rst";s:4:"da8b";s:28:"Documentation/Misc/Index.rst";s:4:"6519";s:38:"Documentation/Misc/MissingKnownErrors/";s:4:"d41d";s:47:"Documentation/Misc/MissingKnownErrors/Index.rst";s:4:"c83f";s:26:"Documentation/Settings.cfg";s:4:"b4bf";s:26:"Documentation/Settings.yml";s:4:"af71";s:24:"Documentation/Tutorials/";s:4:"d41d";s:42:"Documentation/Tutorials/ExternalTutorials/";s:4:"d41d";s:51:"Documentation/Tutorials/ExternalTutorials/Index.rst";s:4:"91d5";s:33:"Documentation/Tutorials/Index.rst";s:4:"d60e";s:36:"Documentation/Tutorials/Integration/";s:4:"d41d";s:45:"Documentation/Tutorials/Integration/Index.rst";s:4:"da5a";s:34:"Documentation/Tutorials/Templates/";s:4:"d41d";s:51:"Documentation/Tutorials/Templates/GroupNewsRecords/";s:4:"d41d";s:60:"Documentation/Tutorials/Templates/GroupNewsRecords/Index.rst";s:4:"ae98";s:43:"Documentation/Tutorials/Templates/Index.rst";s:4:"6ff8";s:56:"Documentation/Tutorials/Templates/RenderContentElements/";s:4:"d41d";s:65:"Documentation/Tutorials/Templates/RenderContentElements/Index.rst";s:4:"ba46";s:50:"Documentation/Tutorials/Templates/RenderInColumns/";s:4:"d41d";s:59:"Documentation/Tutorials/Templates/RenderInColumns/Index.rst";s:4:"7466";s:26:"Documentation/UsersManual/";s:4:"d41d";s:37:"Documentation/UsersManual/HowToStart/";s:4:"d41d";s:46:"Documentation/UsersManual/HowToStart/Index.rst";s:4:"8a85";s:35:"Documentation/UsersManual/Index.rst";s:4:"6344";s:34:"Documentation/UsersManual/Plugins/";s:4:"d41d";s:43:"Documentation/UsersManual/Plugins/Index.rst";s:4:"3264";s:34:"Documentation/UsersManual/Records/";s:4:"d41d";s:43:"Documentation/UsersManual/Records/Category/";s:4:"d41d";s:52:"Documentation/UsersManual/Records/Category/Index.rst";s:4:"9bad";s:43:"Documentation/UsersManual/Records/Index.rst";s:4:"3f71";s:39:"Documentation/UsersManual/Records/News/";s:4:"d41d";s:48:"Documentation/UsersManual/Records/News/Index.rst";s:4:"745c";s:38:"Documentation/UsersManual/Records/Tag/";s:4:"d41d";s:47:"Documentation/UsersManual/Records/Tag/Index.rst";s:4:"0eb3";s:9:"Readme.md";s:4:"1c75";s:10:"Resources/";s:4:"d41d";s:18:"Resources/Private/";s:4:"d41d";s:27:"Resources/Private/.htaccess";s:4:"4a7e";s:26:"Resources/Private/Backend/";s:4:"d41d";s:45:"Resources/Private/Backend/PageLayoutView.html";s:4:"fe7d";s:27:"Resources/Private/Language/";s:4:"d41d";s:40:"Resources/Private/Language/locallang.xlf";s:4:"abb1";s:43:"Resources/Private/Language/locallang_be.xlf";s:4:"d225";s:53:"Resources/Private/Language/locallang_csh_category.xlf";s:4:"064e";s:54:"Resources/Private/Language/locallang_csh_flexforms.xlf";s:4:"bd13";s:49:"Resources/Private/Language/locallang_csh_link.xlf";s:4:"fb81";s:49:"Resources/Private/Language/locallang_csh_news.xlf";s:4:"e23d";s:48:"Resources/Private/Language/locallang_csh_tag.xlf";s:4:"67bf";s:43:"Resources/Private/Language/locallang_db.xlf";s:4:"24f8";s:44:"Resources/Private/Language/locallang_mod.xlf";s:4:"5d59";s:58:"Resources/Private/Language/locallang_modadministration.xlf";s:4:"84b7";s:26:"Resources/Private/Layouts/";s:4:"d41d";s:34:"Resources/Private/Layouts/Backend/";s:4:"d41d";s:46:"Resources/Private/Layouts/Backend/Default.html";s:4:"b647";s:45:"Resources/Private/Layouts/Backend/Simple.html";s:4:"d75f";s:37:"Resources/Private/Layouts/Detail.html";s:4:"4a45";s:38:"Resources/Private/Layouts/General.html";s:4:"409a";s:27:"Resources/Private/Partials/";s:4:"d41d";s:36:"Resources/Private/Partials/Category/";s:4:"d41d";s:46:"Resources/Private/Partials/Category/Items.html";s:4:"609b";s:34:"Resources/Private/Partials/Detail/";s:4:"d41d";s:56:"Resources/Private/Partials/Detail/FalMediaContainer.html";s:4:"ee79";s:52:"Resources/Private/Partials/Detail/FalMediaImage.html";s:4:"6813";s:52:"Resources/Private/Partials/Detail/FalMediaVideo.html";s:4:"92f0";s:48:"Resources/Private/Partials/Detail/Opengraph.html";s:4:"ad51";s:46:"Resources/Private/Partials/Detail/Shariff.html";s:4:"d4e5";s:32:"Resources/Private/Partials/List/";s:4:"d41d";s:41:"Resources/Private/Partials/List/Item.html";s:4:"d32a";s:28:"Resources/Private/Templates/";s:4:"d41d";s:43:"Resources/Private/Templates/Administration/";s:4:"d41d";s:53:"Resources/Private/Templates/Administration/Index.html";s:4:"2dc6";s:59:"Resources/Private/Templates/Administration/NewCategory.html";s:4:"bca2";s:55:"Resources/Private/Templates/Administration/NewNews.html";s:4:"bca2";s:54:"Resources/Private/Templates/Administration/NewTag.html";s:4:"bca2";s:62:"Resources/Private/Templates/Administration/NewsPidListing.html";s:4:"1849";s:37:"Resources/Private/Templates/Category/";s:4:"d41d";s:46:"Resources/Private/Templates/Category/List.html";s:4:"9b85";s:35:"Resources/Private/Templates/Import/";s:4:"d41d";s:45:"Resources/Private/Templates/Import/Index.html";s:4:"aecc";s:33:"Resources/Private/Templates/News/";s:4:"d41d";s:46:"Resources/Private/Templates/News/DateMenu.html";s:4:"8418";s:44:"Resources/Private/Templates/News/Detail.html";s:4:"6e28";s:42:"Resources/Private/Templates/News/List.atom";s:4:"894b";s:42:"Resources/Private/Templates/News/List.html";s:4:"7c29";s:42:"Resources/Private/Templates/News/List.ical";s:4:"beb5";s:41:"Resources/Private/Templates/News/List.xml";s:4:"02e3";s:48:"Resources/Private/Templates/News/SearchForm.html";s:4:"9125";s:50:"Resources/Private/Templates/News/SearchResult.html";s:4:"50b7";s:35:"Resources/Private/Templates/Styles/";s:4:"d41d";s:39:"Resources/Private/Templates/Styles/Twb/";s:4:"d41d";s:47:"Resources/Private/Templates/Styles/Twb/Layouts/";s:4:"d41d";s:58:"Resources/Private/Templates/Styles/Twb/Layouts/Detail.html";s:4:"deb9";s:59:"Resources/Private/Templates/Styles/Twb/Layouts/General.html";s:4:"d40a";s:48:"Resources/Private/Templates/Styles/Twb/Partials/";s:4:"d41d";s:57:"Resources/Private/Templates/Styles/Twb/Partials/Category/";s:4:"d41d";s:67:"Resources/Private/Templates/Styles/Twb/Partials/Category/Items.html";s:4:"abd8";s:56:"Resources/Private/Templates/Styles/Twb/Partials/General/";s:4:"d41d";s:82:"Resources/Private/Templates/Styles/Twb/Partials/General/AdditionalInformation.html";s:4:"5b7f";s:53:"Resources/Private/Templates/Styles/Twb/Partials/List/";s:4:"d41d";s:62:"Resources/Private/Templates/Styles/Twb/Partials/List/Item.html";s:4:"da59";s:49:"Resources/Private/Templates/Styles/Twb/Templates/";s:4:"d41d";s:58:"Resources/Private/Templates/Styles/Twb/Templates/Category/";s:4:"d41d";s:67:"Resources/Private/Templates/Styles/Twb/Templates/Category/List.html";s:4:"5669";s:54:"Resources/Private/Templates/Styles/Twb/Templates/News/";s:4:"d41d";s:67:"Resources/Private/Templates/Styles/Twb/Templates/News/DateMenu.html";s:4:"9936";s:65:"Resources/Private/Templates/Styles/Twb/Templates/News/Detail.html";s:4:"fccd";s:63:"Resources/Private/Templates/Styles/Twb/Templates/News/List.html";s:4:"27e4";s:69:"Resources/Private/Templates/Styles/Twb/Templates/News/SearchForm.html";s:4:"3f3d";s:71:"Resources/Private/Templates/Styles/Twb/Templates/News/SearchResult.html";s:4:"46ac";s:53:"Resources/Private/Templates/Styles/Twb/Templates/Tag/";s:4:"d41d";s:62:"Resources/Private/Templates/Styles/Twb/Templates/Tag/List.html";s:4:"e6f2";s:61:"Resources/Private/Templates/Styles/Twb/Templates/ViewHelpers/";s:4:"d41d";s:68:"Resources/Private/Templates/Styles/Twb/Templates/ViewHelpers/Widget/";s:4:"d41d";s:77:"Resources/Private/Templates/Styles/Twb/Templates/ViewHelpers/Widget/Paginate/";s:4:"d41d";s:87:"Resources/Private/Templates/Styles/Twb/Templates/ViewHelpers/Widget/Paginate/Index.html";s:4:"1f91";s:32:"Resources/Private/Templates/Tag/";s:4:"d41d";s:41:"Resources/Private/Templates/Tag/List.html";s:4:"be03";s:40:"Resources/Private/Templates/ViewHelpers/";s:4:"d41d";s:47:"Resources/Private/Templates/ViewHelpers/Widget/";s:4:"d41d";s:56:"Resources/Private/Templates/ViewHelpers/Widget/Paginate/";s:4:"d41d";s:66:"Resources/Private/Templates/ViewHelpers/Widget/Paginate/Index.html";s:4:"1c92";s:17:"Resources/Public/";s:4:"d41d";s:21:"Resources/Public/Css/";s:4:"d41d";s:29:"Resources/Public/Css/Backend/";s:4:"d41d";s:47:"Resources/Public/Css/Backend/PageLayoutView.css";s:4:"2954";s:47:"Resources/Public/Css/Backend/administration.css";s:4:"5e7f";s:48:"Resources/Public/Css/Backend/administration.less";s:4:"1938";s:35:"Resources/Public/Css/news-basic.css";s:4:"1e16";s:36:"Resources/Public/Css/news-basic.less";s:4:"90fd";s:23:"Resources/Public/Icons/";s:4:"d41d";s:47:"Resources/Public/Icons/ext-news-folder-tree.svg";s:4:"8d82";s:48:"Resources/Public/Icons/module_administration.svg";s:4:"2c33";s:40:"Resources/Public/Icons/module_import.svg";s:4:"2c33";s:49:"Resources/Public/Icons/news_domain_model_link.svg";s:4:"2493";s:49:"Resources/Public/Icons/news_domain_model_news.svg";s:4:"0090";s:58:"Resources/Public/Icons/news_domain_model_news_external.svg";s:4:"5030";s:58:"Resources/Public/Icons/news_domain_model_news_internal.svg";s:4:"1a9d";s:48:"Resources/Public/Icons/news_domain_model_tag.svg";s:4:"49ad";s:40:"Resources/Public/Icons/plugin_wizard.svg";s:4:"532d";s:24:"Resources/Public/Images/";s:4:"d41d";s:47:"Resources/Public/Images/dummy-preview-image.png";s:4:"8084";s:28:"Resources/Public/JavaScript/";s:4:"d41d";s:41:"Resources/Public/JavaScript/PageLayout.js";s:4:"91bb";s:6:"Tests/";s:4:"d41d";s:12:"Tests/Build/";s:4:"d41d";s:31:"Tests/Build/FunctionalTests.xml";s:4:"bf0b";s:25:"Tests/Build/UnitTests.xml";s:4:"ca24";s:17:"Tests/Functional/";s:4:"d41d";s:26:"Tests/Functional/Fixtures/";s:4:"d41d";s:42:"Tests/Functional/Fixtures/sys_category.xml";s:4:"7abc";s:34:"Tests/Functional/Fixtures/tags.xml";s:4:"f4b2";s:55:"Tests/Functional/Fixtures/tx_news_domain_model_news.xml";s:4:"ce0c";s:28:"Tests/Functional/Repository/";s:4:"d41d";s:54:"Tests/Functional/Repository/CategoryRepositoryTest.php";s:4:"21d6";s:50:"Tests/Functional/Repository/NewsRepositoryTest.php";s:4:"b6b8";s:29:"Tests/Functional/ViewHelpers/";s:4:"d41d";s:61:"Tests/Functional/ViewHelpers/SimplePrevNextViewHelperTest.php";s:4:"7dbb";s:11:"Tests/Unit/";s:4:"d41d";s:19:"Tests/Unit/Backend/";s:4:"d41d";s:36:"Tests/Unit/Backend/FormDataProvider/";s:4:"d41d";s:64:"Tests/Unit/Backend/FormDataProvider/NewsRowInitializeNewTest.php";s:4:"7f9b";s:22:"Tests/Unit/Controller/";s:4:"d41d";s:48:"Tests/Unit/Controller/NewsBaseControllerTest.php";s:4:"3772";s:43:"Tests/Unit/Controller/TagControllerTest.php";s:4:"93c1";s:18:"Tests/Unit/Domain/";s:4:"d41d";s:24:"Tests/Unit/Domain/Model/";s:4:"d41d";s:40:"Tests/Unit/Domain/Model/CategoryTest.php";s:4:"cbb6";s:28:"Tests/Unit/Domain/Model/Dto/";s:4:"d41d";s:56:"Tests/Unit/Domain/Model/Dto/AdministrationDemandTest.php";s:4:"fae9";s:51:"Tests/Unit/Domain/Model/Dto/EmConfigurationTest.php";s:4:"8cfb";s:46:"Tests/Unit/Domain/Model/Dto/NewsDemandTest.php";s:4:"bdfc";s:42:"Tests/Unit/Domain/Model/Dto/SearchTest.php";s:4:"d221";s:45:"Tests/Unit/Domain/Model/FileReferenceTest.php";s:4:"2e67";s:36:"Tests/Unit/Domain/Model/LinkTest.php";s:4:"7013";s:36:"Tests/Unit/Domain/Model/NewsTest.php";s:4:"e6c4";s:35:"Tests/Unit/Domain/Model/TagTest.php";s:4:"079c";s:41:"Tests/Unit/Domain/Model/TtContentTest.php";s:4:"3f15";s:29:"Tests/Unit/Domain/Repository/";s:4:"d41d";s:55:"Tests/Unit/Domain/Repository/CategoryRepositoryTest.php";s:4:"87ee";s:51:"Tests/Unit/Domain/Repository/NewsRepositoryTest.php";s:4:"2e40";s:17:"Tests/Unit/Hooks/";s:4:"d41d";s:31:"Tests/Unit/Hooks/LabelsTest.php";s:4:"fbee";s:39:"Tests/Unit/Hooks/PageLayoutViewTest.php";s:4:"1ff4";s:19:"Tests/Unit/Service/";s:4:"d41d";s:42:"Tests/Unit/Service/CategoryServiceTest.php";s:4:"7e91";s:24:"Tests/Unit/TreeProvider/";s:4:"d41d";s:56:"Tests/Unit/TreeProvider/DatabaseTreeDataProviderTest.php";s:4:"9b08";s:19:"Tests/Unit/Utility/";s:4:"d41d";s:42:"Tests/Unit/Utility/EmConfigurationTest.php";s:4:"ee04";s:36:"Tests/Unit/Utility/ImportJobTest.php";s:4:"3999";s:41:"Tests/Unit/Utility/TemplateLayoutTest.php";s:4:"a48c";s:37:"Tests/Unit/Utility/TypoScriptTest.php";s:4:"4711";s:30:"Tests/Unit/Utility/UrlTest.php";s:4:"4a20";s:37:"Tests/Unit/Utility/ValidationTest.php";s:4:"5bfd";s:23:"Tests/Unit/ViewHelpers/";s:4:"d41d";s:26:"Tests/Unit/ViewHelpers/Be/";s:4:"d41d";s:60:"Tests/Unit/ViewHelpers/Be/IsCheckboxActiveViewhelperTest.php";s:4:"5c76";s:61:"Tests/Unit/ViewHelpers/ExcludeDisplayedNewsViewHelperTest.php";s:4:"8ead";s:30:"Tests/Unit/ViewHelpers/Format/";s:4:"d41d";s:55:"Tests/Unit/ViewHelpers/Format/NothingViewHelperTest.php";s:4:"b1b3";s:51:"Tests/Unit/ViewHelpers/IfIsActiveViewHelperTest.php";s:4:"363d";s:45:"Tests/Unit/ViewHelpers/LinkViewHelperTest.php";s:4:"0f1b";s:57:"Tests/Unit/ViewHelpers/PaginateBodytextViewHelperTest.php";s:4:"573e";s:55:"Tests/Unit/ViewHelpers/SimplePrevNextViewHelperTest.php";s:4:"2c85";s:30:"Tests/Unit/ViewHelpers/Social/";s:4:"d41d";s:54:"Tests/Unit/ViewHelpers/Social/DisqusViewHelperTest.php";s:4:"2f84";s:51:"Tests/Unit/ViewHelpers/TargetLinkViewHelperTest.php";s:4:"7162";s:49:"Tests/Unit/ViewHelpers/TitleTagViewHelperTest.php";s:4:"e30c";s:30:"Tests/Unit/ViewHelpers/Widget/";s:4:"d41d";s:41:"Tests/Unit/ViewHelpers/Widget/Controller/";s:4:"d41d";s:67:"Tests/Unit/ViewHelpers/Widget/Controller/PaginateControllerTest.php";s:4:"e400";s:13:"composer.json";s:4:"fb27";s:21:"ext_conf_template.txt";s:4:"d989";s:12:"ext_icon.gif";s:4:"777b";s:17:"ext_localconf.php";s:4:"9b73";s:14:"ext_tables.php";s:4:"ab18";s:14:"ext_tables.sql";s:4:"48e2";s:24:"ext_typoscript_setup.txt";s:4:"68ac";}',
);

?>