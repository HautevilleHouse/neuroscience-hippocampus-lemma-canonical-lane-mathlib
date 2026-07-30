import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure PlaceCellFormationPackage where
  placeField : Type u
  spatialInput : Type v
  thetaPhasePrecession : Type w
  rateCoding : Prop
  phasePrecession : Prop
  remappingMechanism : Prop

structure PlaceCellFormationEvidence (P : PlaceCellFormationPackage) where
  rateCodingClosed : P.rateCoding
  phasePrecessionClosed : P.phasePrecession
  remappingMechanismClosed : P.remappingMechanism

def PlaceCellFormationClosed (P : PlaceCellFormationPackage) : Prop :=
  P.rateCoding ∧ P.phasePrecession ∧ P.remappingMechanism

theorem place_cell_formation_closed_from_evidence
    (P : PlaceCellFormationPackage) (E : PlaceCellFormationEvidence P) :
    PlaceCellFormationClosed P := by
  exact And.intro E.rateCodingClosed
    (And.intro E.phasePrecessionClosed E.remappingMechanismClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse