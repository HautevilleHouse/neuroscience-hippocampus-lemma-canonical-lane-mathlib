import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceHippocampusLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : HippocampusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HippocampusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse