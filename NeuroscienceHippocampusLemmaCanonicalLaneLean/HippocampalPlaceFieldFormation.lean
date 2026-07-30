import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HippocampalPlaceFieldFormation where
  spatialLocation : ℝ × ℝ
  placeFieldCenter : ℝ × ℝ
  firingRateMap : ℝ × ℝ → ℝ
  gridCellInput : ℝ × ℝ → ℝ
  pathIntegrationMechanism : Prop
  placeFieldStabilization : Prop
  remappingDynamics : Prop
  thetaPhasePrecession : Prop

structure HippocampalPlaceFieldFormationEvidence (H : HippocampalPlaceFieldFormation) where
  pathIntegrationMechanismClosed : H.pathIntegrationMechanism
  placeFieldStabilizationClosed : H.placeFieldStabilization
  remappingDynamicsClosed : H.remappingDynamics
  thetaPhasePrecessionClosed : H.thetaPhasePrecession

def HippocampalPlaceFieldFormationClosed (H : HippocampalPlaceFieldFormation) : Prop :=
  H.pathIntegrationMechanism ∧ H.placeFieldStabilization ∧
  H.remappingDynamics ∧ H.thetaPhasePrecession

theorem hippocampal_place_field_formation_closed_from_evidence
    (H : HippocampalPlaceFieldFormation) (E : HippocampalPlaceFieldFormationEvidence H) :
    HippocampalPlaceFieldFormationClosed H :=
  And.intro E.pathIntegrationMechanismClosed
    (And.intro E.placeFieldStabilizationClosed
      (And.intro E.remappingDynamicsClosed E.thetaPhasePrecessionClosed))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse