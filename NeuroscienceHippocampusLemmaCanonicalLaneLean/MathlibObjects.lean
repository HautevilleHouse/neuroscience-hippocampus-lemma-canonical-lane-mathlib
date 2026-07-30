import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HippocampalCircuit where
  ca1Region : Type
  ca3Region : Type
  dentateGyrus : Type
  synapses : ca3Region → ca1Region → Prop
  hebbianPlasticity : Prop
  hebbianPlasticityTerm : hebbianPlasticity

structure HippocampusLemmaObject where
  circuit : HippocampalCircuit
  synapticWeights : Type
  learningRule : Prop
  patternSeparation : Prop
  convergence : Prop
  conclusion : convergence

structure HippocampusEndgameState where
  object : HippocampusLemmaObject

def HippocampusWitnessClosed (O : HippocampusLemmaObject) : Prop :=
  O.convergence

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse