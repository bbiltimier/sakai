<link href="dhtmlpopup/dhtmlPopup.css" rel="stylesheet" type="text/css" />
<script src="dhtmlpopup/dhtmlPopup.js" type="text/javascript"></script>
<f:view>
	<div class="portletBody">
	  <h:form id="gbForm">
	  
	  <!-- Course Grade Summary -->
      <sakai:flowState bean="#{courseGradeDetailsBean}" />
      
      <h2><h:outputText value="#{msgs.calculate_course_grade_name}"/></h2>

	  <p class="messageConfirmation"><h:outputText value="#{msgs.calculate_course_grade_message}" /></p>
	  <p class="instruction"><h:outputText value="#{msgs.calculate_course_grade_action}" /></p>
	  
	  <p class="act">
	  	<h:commandButton
	  		action="#{courseGradeDetailsBean.processCalculateCourseGrades}"
	  		value="#{msgs.calculate_course_grade_continue}"
	  		styleClass="active"
	  		onclick="setUngradedItems_disableButtonsActivateSpinner( 'gbForm:setUngradedItemsSpinner' );" />
	  	<h:commandButton
	  		action="courseGradeDetails"
	  		value="#{msgs.calculate_course_grade_cancel}"
	  		onclick="setUngradedItems_disableButtonsActivateSpinner( 'gbForm:setUngradedItemsSpinner' );" />
	  	<h:graphicImage id="setUngradedItemsSpinner" value="/../library/image/indicator.gif" styleClass="setUngradedItemsSpinner" />
	  </p>

	  </h:form>
	</div>
</f:view>
