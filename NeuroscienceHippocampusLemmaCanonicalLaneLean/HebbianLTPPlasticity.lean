import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HebbianLTPPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  spikeTiming : Prop
  calciumInflux : Prop
  ampaReceptorInsertion : Prop
  ltpExpression : Prop

structure HebbianLTPPlasticityEvidence (P : HebbianLTPPlasticityPackage) where
  spikeTimingClosed : P.spikeTiming
  calciumInfluxClosed : P.calciumInflux
  ampaReceptorInsertionClosed : P.ampaReceptorInsertion
  ltpExpressionClosed : P.ltpExpression

def HebbianLTPPlasticityClosed (P : HebbianLTPPlasticityPackage) : Prop :=
  P.spikeTiming ∧ P.calciumInflux ∧ P.ampaReceptorInsertion ∧ P.ltpExpression

theorem hebbian_ltp_plasticity_closed_from_evidence (P : HebbianLTPPlasticityPackage) (E : HebbianLTPPlasticityEvidence P) :
    HebbianLTPPlasticityClosed P := by
  exact And.intro E.spikeTimingClosed (And.intro E.calciumInfluxClosed (And.intro E.ampaReceptorInsertionClosed E.ltpExpressionClosed))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse