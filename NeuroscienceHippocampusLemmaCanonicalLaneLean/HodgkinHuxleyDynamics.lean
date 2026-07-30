import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type u
  gatingVariables : Type v
  ionCurrents : Type w
  differentialEquations : Prop
  actionPotentialGeneration : Prop
  parameterFitting : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  differentialEquationsClosed : H.differentialEquations
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  parameterFittingClosed : H.parameterFitting

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.differentialEquations ∧ H.actionPotentialGeneration ∧ H.parameterFitting

theorem hodgkin_huxley_dynamics_closed_from_evidence
    (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) :
    HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.differentialEquationsClosed
    (And.intro E.actionPotentialGenerationClosed E.parameterFittingClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse