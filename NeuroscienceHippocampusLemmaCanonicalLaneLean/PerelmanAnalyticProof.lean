import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HodgkinHuxleyCertificate where
  voltageEquations : Prop
  ionChannelDynamics : Prop
  actionPotentialGeneration : Prop
  voltageEquationsClosed : voltageEquations
  ionChannelDynamicsClosed : ionChannelDynamics
  actionPotentialGenerationClosed : actionPotentialGeneration
  evidence : HebbianPlasticityEvidence ({
    synapticModification := voltageEquations
    rateCoding := ionChannelDynamics
    stabilityCondition := actionPotentialGeneration
  } : HebbianPlasticityPackage)

def HodgkinHuxleyClosed (H : HodgkinHuxleyCertificate) : Prop :=
  H.voltageEquations ∧ H.ionChannelDynamics ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyCertificate)
    (E : HebbianPlasticityEvidence _) : HodgkinHuxleyClosed H := by
  exact And.intro H.voltageEquationsClosed
    (And.intro H.ionChannelDynamicsClosed H.actionPotentialGenerationClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse