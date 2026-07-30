import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeight : Type u
  preSynapticActivity : Type v
  postSynapticActivity : Type w
  learningRule : Prop
  weightDynamics : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  learningRuleClosed : H.learningRule
  weightDynamicsClosed : H.weightDynamics
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.learningRule ∧ H.weightDynamics ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.learningRuleClosed
    (And.intro E.weightDynamicsClosed E.stabilityConditionClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse