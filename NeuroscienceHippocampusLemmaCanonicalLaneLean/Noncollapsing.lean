import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticModification : Prop
  rateCoding : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapticModificationClosed : H.synapticModification
  rateCodingClosed : H.rateCoding
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapticModification ∧ H.rateCoding ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.synapticModificationClosed
    (And.intro E.rateCodingClosed E.stabilityConditionClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse