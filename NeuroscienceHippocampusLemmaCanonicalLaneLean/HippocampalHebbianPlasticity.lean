import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HebbianPlasticityPackage (A : AdmissibleClass) where
  synapticWeightDynamics : Prop
  spikeTimingDependentPlasticity : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence {A : AdmissibleClass} (H : HebbianPlasticityPackage A) where
  synapticWeightDynamicsClosed : H.synapticWeightDynamics
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed {A : AdmissibleClass} (H : HebbianPlasticityPackage A) : Prop :=
  H.synapticWeightDynamics ∧ H.spikeTimingDependentPlasticity ∧
  H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence
    {A : AdmissibleClass} (H : HebbianPlasticityPackage A) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.synapticWeightDynamicsClosed
    (And.intro E.spikeTimingDependentPlasticityClosed
      (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse