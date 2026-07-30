import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceHippocampusLemmaCanonicalLaneLean.BridgeLemmas
import NeuroscienceHippocampusLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

def ConstrainedHippocampusLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hippocampus_lemma_endgame (A : AdmissibleClass) :
    ConstrainedHippocampusLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse