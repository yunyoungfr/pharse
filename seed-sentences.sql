-- 기본 문장 추가 시드
-- Supabase Dashboard → SQL Editor 에서 실행하세요
-- 주의: 로그인한 상태에서 앱에서 직접 추가하거나,
--       아직 마이그레이션 전(user_id 컬럼 없음)이라면 이 SQL로 넣을 수 있습니다.
--       마이그레이션 후에는 앱에서 추가하는 것을 권장합니다.

insert into sentences (ko, fr, src) values
  (
    '그로부터 19년이 흘렀는데, 한반도 평화에 얼마나 진전이 있었는지 되돌아보게 됩니다.',
    'Dix-neuf ans plus tard, nous réfléchissons aux progrès pour la paix dans la péninsule coréenne.',
    '한반도 평화'
  ),
  (
    '이 자리를 빌려 지난 70년 동안 한반도 평화를 위해 변함없는 성의를 보내준 스웨덴 국민과 지도자들께 경의를 표하며, 한국 국민의 인사를 전합니다.',
    'Je voudrais profiter de cette occasion pour saluer le peuple et les dirigeants suédois. Depuis soixante-dix ans, ils s''engagent constamment en faveur de la paix sur la péninsule coréenne. Je souhaite également leur transmettre les salutations du peuple coréen.',
    '한반도 평화'
  ),
  (
    '끈질긴 의지를 가진 양국 국민은 제조업을 중심으로 가난한 나라를 잘사는 나라로 일으켰습니다.',
    'Grâce à une forte volonté et à l''industrie manufacturière, les deux pays sont passés de pays pauvres à des pays prospères.',
    '한스웨덴 관계'
  ),
  (
    '2015년 이후 인스타그램 등을 통해 확산된 3차 한류가 있었습니다.',
    'À titre d''anecdote, selon cette étude, une vidéo montrant du « cheese dakgalbi » est devenue virale sur Instagram, ce qui aurait contribué à lancer cette troisième phase.',
    '한류'
  ),
  (
    '90년대 후반 초고속 통신의 탄생과 함께 PC방 문화가 생겼습니다.',
    'À la fin des années 1990, avec l''arrivée de l''internet à haut débit, la culture des PC bang est apparue.',
    '한류'
  ),
  (
    '현재 K-콘텐츠 산업 규모는 약 150조 원입니다.',
    'Aujourd''hui, l''industrie des contenus culturels coréens représente environ 150 000 milliards de wons.',
    'K-콘텐츠'
  ),
  (
    '오늘 이 K컬처포럼이 정부와 산업계, 학계를 잇는 전담 기관으로서 그 역할을 다해야 합니다.',
    'Aujourd''hui, le Forum K-Culture doit pleinement assumer son rôle en faisant le lien entre le gouvernement, le secteur industriel et le monde universitaire.',
    'K-콘텐츠'
  ),
  (
    '우리말에 대한 무관심, 외국어와 외래어의 남용, 신조어와 축약어의 범람 등이 올바른 소통의 장애가 되지 않을까 염려하고 있습니다.',
    'Je crains qu''une communication claire ne soit entravée par le manque d''intérêt pour notre langue, l''usage excessif des langues étrangères et des emprunts, ainsi que la prolifération des néologismes et des abréviations.',
    '한글날'
  ),
  (
    '한글의 소중함을 일깨우고 그 가치를 발전시켜주신 공로로 수상의 영예를 안으신 분들께 축하의 말씀을 드립니다.',
    'Je tiens également à féliciter les lauréats distingués aujourd''hui pour leur contribution à la promotion et à la transmission des valeurs du hangeul.',
    '한글날'
  ),
  (
    '세계는 스물여덟 글자에 숭고한 인류애가 담겨있다고 높이 평가하고 있습니다.',
    'Le monde apprécie aussi l''amour de l''humanité contenu dans ces vingt-huit lettres.',
    '한글날'
  ),
  (
    '정부는 세종학당을 비롯한 한국어 교육기관에서 더 많은 세계인이 우리 말과 글을 배울 수 있도록 최선을 다해 지원하겠습니다.',
    'Le gouvernement continuera de soutenir les Instituts Roi Sejong et les autres établissements d''enseignement du coréen afin que davantage de personnes puissent apprendre le coréen dans le monde.',
    '한글날'
  ),
  (
    '국민 여러분의 많은 관심과 성원을 당부드립니다.',
    'Je vous invite à vous y intéresser et à le soutenir.',
    '한글날'
  ),
  (
    '이는 외부 상황에 따라 에너지 공급이 불안정해질 수 있음을 의미합니다.',
    'Cela signifie que l''approvisionnement énergétique peut devenir instable en fonction des circonstances internationales.',
    '에너지'
  ),
  (
    '이를 위해 정부는 2030년까지 태양광과 풍력, 바이오와 같은 재생에너지를 100GW 규모로 확대할 계획입니다.',
    'Pour cela, le gouvernement prévoit d''augmenter la capacité des énergies renouvelables, comme le solaire, l''éolien et la biomasse, pour atteindre 100 GW d''ici 2030.',
    '에너지'
  ),
  (
    '2030년까지 신차 판매의 40%를 전기차와 수소차로 확대하는 것을 목표로 하고 있습니다.',
    'D''ici 2030, 40 % des ventes de voitures neuves devront être des voitures électriques ou à hydrogène.',
    '에너지'
  ),
  (
    '에너지 전환은 단순한 선택이 아닌 필수적인 과제입니다.',
    'La transition énergétique n''est donc pas un simple choix, mais une nécessité.',
    '에너지'
  );
