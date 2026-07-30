import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceHippocampusLemmaCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HodgkinHuxleyEvidenceTerms (H : HodgkinHuxleyCertificate) where
  voltageEquations : H.voltageEquations
  ionChannelDynamics : H.ionChannelDynamics
  actionPotentialGeneration : H.actionPotentialGeneration
  hodgkinHuxleyClosed : HodgkinHuxleyClosed H

def HodgkinHuxleyCertificate.evidenceTerms (H : HodgkinHuxleyCertificate) : HodgkinHuxleyEvidenceTerms H :=
  { voltageEquations := H.voltageEquationsClosed
    ionChannelDynamics := H.ionChannelDynamicsClosed
    actionPotentialGeneration := H.actionPotentialGenerationClosed
    hodgkinHuxleyClosed := hodgkin_huxley_closed_from_evidence H H.evidence
  }

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse