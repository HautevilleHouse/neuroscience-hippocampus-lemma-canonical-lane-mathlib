import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HodgkinHuxleySystem where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  conductanceKinetics : Prop
  capacitanceEquation : Prop
  ionCurrentModel : Prop
  spikingThresholdCondition : Prop
  recoveryVariableDynamics : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleySystem) where
  conductanceKineticsClosed : H.conductanceKinetics
  capacitanceEquationClosed : H.capacitanceEquation
  ionCurrentModelClosed : H.ionCurrentModel
  spikingThresholdConditionClosed : H.spikingThresholdCondition
  recoveryVariableDynamicsClosed : H.recoveryVariableDynamics

def HodgkinHuxleySystemClosed (H : HodgkinHuxleySystem) : Prop :=
  H.conductanceKinetics ∧ H.capacitanceEquation ∧
  H.ionCurrentModel ∧ H.spikingThresholdCondition ∧ H.recoveryVariableDynamics

theorem hodgkin_huxley_system_closed_from_evidence (H : HodgkinHuxleySystem)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleySystemClosed H :=
  And.intro E.conductanceKineticsClosed
    (And.intro E.capacitanceEquationClosed
      (And.intro E.ionCurrentModelClosed
        (And.intro E.spikingThresholdConditionClosed
          E.recoveryVariableDynamicsClosed)))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse