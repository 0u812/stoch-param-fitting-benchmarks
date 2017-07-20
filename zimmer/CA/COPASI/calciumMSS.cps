<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.11 (Build 65) (http://www.copasi.org) at 2015-07-13 13:12:09 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="11" versionDevel="65" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_41" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_30" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Rate Law A" type="UserDefined" reversible="unspecified">
      <Expression>
        k2 * G
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="G" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for a3" type="UserDefined" reversible="unspecified">
      <Expression>
        k3 * A * B / ( A + k4 )
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="k3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="A" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="B" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="k4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="New Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221415e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T14:28:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">




        
      



</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="G" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="PLC" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Ca" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="constG" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3153" name="v" value="212"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_3153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="mlG" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:07:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3154" name="k2" value="2.85"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_3154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="mlP" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3155" name="k2" value="1.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_3155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="mlCa" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3156" name="k2" value="13.58"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_3156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="a3" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3157" name="k3" value="1.52"/>
          <Constant key="Parameter_3158" name="k4" value="190"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_3157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_3158"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="a4" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3159" name="k3" value="4.88"/>
          <Constant key="Parameter_3160" name="k4" value="1180"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_3159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_3160"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="b2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-25T15:08:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3161" name="Km" value="29090"/>
          <Constant key="Parameter_3162" name="V" value="32240"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_3161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_3162"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="b3 " reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:12:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_3163" name="Km" value="160"/>
          <Constant key="Parameter_3164" name="V" value="153000"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_3163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_3164"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="pe_event_1" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 0.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              4.45142
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              264.963
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              64.0686
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="pe_event_2" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              17.994
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1136.43
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              348.557
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="pe_event_3" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 1.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              81.1047
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3851.12
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1337.61
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="pe_event_4" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 2
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1531.61
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              11268.5
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              4404.04
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="pe_event_5" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 2.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              6689.83
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7573.44
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              8594.11
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="pe_event_6" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 3
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              726.213
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9491.56
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9539.06
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="pe_event_7" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 3.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5336.72
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10835.4
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12086.8
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="pe_event_8" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 4
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              987.141
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9895.87
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              13092.1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="pe_event_9" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 4.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2620.47
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10540
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14470.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="pe_event_10" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1253.46
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9999.65
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15256.6
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="pe_event_11" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 5.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1259.59
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9958.88
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15854.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="pe_event_12" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 6
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              974.328
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9641.49
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16201.6
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="pe_event_13" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 6.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              742.323
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9240.49
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16280.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="pe_event_14" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 7
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              548.11
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8700.15
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16081.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="pe_event_15" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 7.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              380.765
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7908.03
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15563.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="pe_event_16" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 8
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              227.065
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              6599.74
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14586.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="pe_event_17" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 8.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              91.7933
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              4090.56
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12810.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="pe_event_18" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 9
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.539212
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              6.37681
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9490.98
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="pe_event_19" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 9.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.312992
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3.08615
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              6124.87
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="pe_event_20" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.915045
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7.41776
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              3813.69
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="pe_event_21" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 10.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.277684
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              12.556
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              2311.79
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_21" name="pe_event_22" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 11
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.0465722
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              26.4172
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1384.25
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_22" name="pe_event_23" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 11.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2.17068
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              53.0955
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              829.12
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_23" name="pe_event_24" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 12
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1.85786
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              131.555
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              525.47
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_24" name="pe_event_25" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 12.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              4.34689
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              383.722
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              420.34
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_25" name="pe_event_26" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 13
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              20.4895
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1222.2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              607.608
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_26" name="pe_event_27" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 13.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              83.6964
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3863.7
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1519.06
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_27" name="pe_event_28" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 14
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1436.37
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              11130.1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              4485
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_28" name="pe_event_29" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 14.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              6926.77
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7753.73
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              8674.63
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_29" name="pe_event_30" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 15
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              718.173
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9468.95
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9608.24
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_30" name="pe_event_31" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 15.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5274.15
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10865.1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12132.6
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_31" name="pe_event_32" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 16
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              987.057
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9896
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              13140.4
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_32" name="pe_event_33" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 16.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2587.63
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10537.2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14500.1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_33" name="pe_event_34" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 17
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1254.09
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9997.72
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15282.6
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_34" name="pe_event_35" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 17.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1243.07
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9944.96
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15867.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_35" name="pe_event_36" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 18
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              967.221
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9630.17
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16207.8
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_36" name="pe_event_37" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 18.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              737.464
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9226.84
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16280.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_37" name="pe_event_38" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 19
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              544.213
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8682.52
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16074.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_38" name="pe_event_39" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 19.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              377.263
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7882.43
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15542.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_39" name="pe_event_40" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 20
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              224.716
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              6552.39
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14549.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_40" name="pe_event_41" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 20.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              88.5624
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              4000.12
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12745.7
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_41" name="pe_event_42" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 21
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -1.20723
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              5.44815
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9388.75
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_42" name="pe_event_43" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 21.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.508147
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              4.21165
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              6053.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_43" name="pe_event_44" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 22
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.22032
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7.37844
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              3765.39
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_44" name="pe_event_45" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 22.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2.29333
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              14.3714
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              2281.51
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_45" name="pe_event_46" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 23
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.79009
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              27.0311
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1364.63
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_46" name="pe_event_47" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 23.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1.58418
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              54.9056
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              817.664
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_47" name="pe_event_48" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 24
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1.30513
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              136.321
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              519.993
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_48" name="pe_event_49" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 24.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              7.14764
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              394.881
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              420.736
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_49" name="pe_event_50" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 25
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              18.8368
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1262.24
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              620.678
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_50" name="pe_event_51" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 25.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              87.1251
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3978.98
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1560.58
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_51" name="pe_event_52" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 26
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1624.32
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              11374.2
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              4607.74
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_52" name="pe_event_53" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 26.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              6325.66
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7502.79
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              8700.48
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_53" name="pe_event_54" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 27
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              767.026
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9598.31
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9659.27
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_54" name="pe_event_55" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 27.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5249
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10730.8
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12183.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_55" name="pe_event_56" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 28
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1022.75
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9953.38
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              13170.4
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_56" name="pe_event_57" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 28.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2571.57
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10499.7
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14530.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_57" name="pe_event_58" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 29
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1254.72
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10002.5
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15300.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_58" name="pe_event_59" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 29.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1236.98
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9940.01
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15880.4
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_59" name="pe_event_60" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 30
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              961.12
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9621.02
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16210.7
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_60" name="pe_event_61" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 30.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              731.664
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9215.61
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16277.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_61" name="pe_event_62" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 31
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              541.036
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8665.31
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16063.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_62" name="pe_event_63" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 31.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              370.654
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7856.53
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15524.8
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_63" name="pe_event_64" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 32
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              221.3
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              6508.53
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14514.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_64" name="pe_event_65" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 32.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              86.1305
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3905.6
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12682
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_65" name="pe_event_66" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 33
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.93874
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1.95038
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9285.82
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_66" name="pe_event_67" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 33.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.113249
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              5.09644
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              5979.1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_67" name="pe_event_68" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 34
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.801318
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8.25455
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              3718.58
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_68" name="pe_event_69" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 34.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.351426
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              15.1185
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              2251.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_69" name="pe_event_70" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 35
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.251586
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              28.0047
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1343.08
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_70" name="pe_event_71" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 35.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.602178
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              57.1075
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              808.896
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_71" name="pe_event_72" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 36
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.261454
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              139.505
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              514.099
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_72" name="pe_event_73" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 36.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5.07198
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              407.557
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              420.954
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_73" name="pe_event_74" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 37
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              20.9464
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1300.41
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              630.978
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_74" name="pe_event_75" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 37.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              92.2954
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              4097.49
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1604.65
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_75" name="pe_event_76" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 38
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1836.88
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              11616
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              4736.75
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_76" name="pe_event_77" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 38.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5687.43
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7281.28
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              8721.78
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_77" name="pe_event_78" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 39
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              818.595
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9727.83
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9710.71
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_78" name="pe_event_79" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 39.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              5201.82
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10588.5
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12232
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_79" name="pe_event_80" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 40
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1059
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10012.9
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              13201.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_80" name="pe_event_81" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 40.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              2548.42
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10461.6
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14558.9
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_81" name="pe_event_82" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 41
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1258.26
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              10009.6
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15316.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_82" name="pe_event_83" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 41.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1230.05
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9932.33
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15893.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_83" name="pe_event_84" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 42
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              953.674
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9612.16
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16216.7
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_84" name="pe_event_85" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 42.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              725.953
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              9204.67
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16274
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_85" name="pe_event_86" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 43
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              536.312
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8648.75
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              16054.3
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_86" name="pe_event_87" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 43.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              368.411
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              7827.64
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              15501.6
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_87" name="pe_event_88" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 44
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              216.435
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              6461.22
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              14480.7
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_88" name="pe_event_89" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 44.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              82.6945
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3805.68
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              12615.7
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_89" name="pe_event_90" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 45
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -1.96175
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3.0093
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              9184.75
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_90" name="pe_event_91" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 45.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.166583
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              3.28878
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              5906.5
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_91" name="pe_event_92" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 46
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              0.433444
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              8.36175
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              3670.71
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_92" name="pe_event_93" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 46.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -1.14296
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              15.9027
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              2221.88
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_93" name="pe_event_94" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 47
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.425379
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              26.9992
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1327.21
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_94" name="pe_event_95" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 47.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              -0.163887
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              57.5674
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              795.561
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_95" name="pe_event_96" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 48
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              1.3383
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              143.054
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              509.395
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_96" name="pe_event_97" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 48.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              6.53977
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              419.969
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              421.209
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_97" name="pe_event_98" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 49
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              21.4182
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              1340.68
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              644.146
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_98" name="pe_event_99" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=New Model,Reference=Time&gt; &gt; 49.5
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              94.1933
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              4222.38
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              1650.61
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 10 10 10 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="zrca.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.5"/>
        <Parameter name="Duration" type="float" value="50"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_20" target="coplscCAmss.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="5"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="4"/>
            <Parameter name="Minimum" type="float" value="2"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="1000"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[mlG],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="ObjectiveFunction" type="key" value=""/>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[a3],ParameterGroup=Parameters,Parameter=k3,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.52"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="zrcan.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="102"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="4"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PLC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Start in Steady State" type="bool" value="0"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Current Solution Statistics" type="CurrentSolutionStatistics">
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_10"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_10"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="time1" taskType="scan" separator=" " precision="6">
      <Comment>
        <html xmlns="http://www.w3.org/1999/xhtml"><head><meta name="qrichtext" content="1" /></head><body style="font-size:13pt;font-family:Helvetica">
<p>Automatically generated report. </p>
</body></html>
      </Comment>
      <Body>
        <Object cn="CN=Root,Model=New Model,Reference=Time"/>
        <Object cn="Separator= "/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=ParticleNumber"/>
        <Object cn="Separator= "/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G],Reference=ParticleNumber"/>
        <Object cn="Separator= "/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PLC],Reference=ParticleNumber"/>
      </Body>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <html xmlns="http://www.w3.org/1999/xhtml"><head><meta name="qrichtext" content="1" /></head><body style="font-size:13pt;font-family:Helvetica">
<p>A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values. </p>
</body></html>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=New Model,Reference=Time"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PLC],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="PE" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=New Model,Vector=Reactions[mlG],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[G]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PLC]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[PLC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Objective Function Landscape" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="TaskList[Parameter Estimation].(Problem)Parameter Estimation.Best Value|(mlG).k2" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Reactions[mlG],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
</COPASI>
