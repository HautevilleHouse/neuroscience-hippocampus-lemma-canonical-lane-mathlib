import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HodgkinHuxleyParameters where
  gNa : ℝ
  gK : ℝ
  gL : ℝ
  VNa : ℝ
  VK : ℝ
  VL : ℝ
  Cm : ℝ

structure HodgkinHuxleyState where
  V : ℝ
  m : ℝ
  n : ℝ
  h : ℝ

structure HodgkinHuxleyEquationsPackage where
  parameters : HodgkinHuxleyParameters
  initialState : HodgkinHuxleyState
  membranePotentialDynamics : Prop
  gatingVariableDynamics : Prop
  spikeGeneration : Prop
  refractoryPeriod : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  membranePotentialDynamicsClosed : H.membranePotentialDynamics
  gatingVariableDynamicsClosed : H.gatingVariableDynamics
  spikeGenerationClosed : H.spikeGeneration
  refractoryPeriodClosed : H.refractoryPeriod

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.membranePotentialDynamics ∧ H.gatingVariableDynamics ∧
  H.spikeGeneration ∧ H.refractoryPeriod

theorem hodgkin_huxley_equations_closed_from_evidence
    (H : HodgkinHuxleyEquationsPackage) (E : HodgkinHuxleyEquationsEvidence H) :
    HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.membranePotentialDynamicsClosed
    (And.intro E.gatingVariableDynamicsClosed
      (And.intro E.spikeGenerationClosed E.refractoryPeriodClosed))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse