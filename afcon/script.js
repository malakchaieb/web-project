let scroll_btn = document.querySelector('.scroll-top');
window.addEventListener('scroll', () => {
    if (window.scrollY > 200) {
        scroll_btn.classList.add('active');
    } else {
        scroll_btn.classList.remove('active');
    }
});

scroll_btn.addEventListener('click', () => {
    document.documentElement.scrollIntoView({
        behavior: 'smooth',
    });
});
var countrycodedict = {
    'Mozambique': 'MZ',
    'Cameroon': 'CM',
    'Gambia': 'GM',
    'Burkina Faso': 'BF',
    'Angola': 'AO',
    'Mali': 'ML',
    'Congo DR': 'CD',
    'Tanzania': 'TZ',
    'Namibia': 'NA',
    "cote d'Ivoire": 'CI',
    'Nigeria': 'NG',
    'Ghana': 'GH',
    'Egypt': 'EG',
    'Algeria': 'DZ',
    'Tunisia': 'TN',
    'Guinea-Bissau': 'GW',
    'Equatorial Guinea': 'GQ',
    'Cabo Verde': 'CV',
    'Morocco': 'MA',
    'Guinea': 'GN',
    'Mauritania': 'MR',
    'South Africa': 'ZA',
    'Zambia': 'ZM',
    'Senegal': 'SN',
    // ... fill in
};


async function fetchMatch() {
    let match_by_date = document.querySelector('#match-date');
    let match_by_group = document.querySelector('#match-group');
    let data = await fetch('http://127.0.0.1/api-malak/auth/auth-file/read.php');
    let response = await data.json();
    let all_match = [];

    function randerDom(match, selector) {
        selector.innerHTML += `
        <div class="match">
        <div class="match-info">
            <h4 class="group">${match.group}</h4>
            <h4>Match Number<span class="badge">${match.matchNumber}</span> </h4>
        </div>
        <div class="flags">
            <div class="home-flag">
                <img src="https://flagsapi.com/${countrycodedict[match.home_team]}/flat/64.png" alt="${match.home_team}" class="flag" />
            <h3 class="home-team">${match.home_team}</h3>
            </div>
            <span class="vs">
            VS
            </span>
            <div class="away-flag">
            <img src="https://flagsapi.com/${countrycodedict[match.away_team]}/flat/64.png" alt="${match.away_team}" class="flag" />
            <h3 class="home-team">${match.away_team}</h3>
            </div>
        </div>
        <div class="time-area">
            <div class="time">
               
                <h4 class="day">${match.day}</h4>
                <h4 class="date">${match.date}</h4>
            </div>
            <h4 class="match-time">${match.localTime}</h4>
        </div>
     </div>
  `;
    }

    for (let i = 0; i < response.length; i++) {
        let time = new Date(response[i]['Date']);
        let localTime = time.toLocaleTimeString().replace(':00:00', ':00');
        let day_month = time.toString().split(' ');
        let date = day_month[2];
        let home_team = response[i]['HomeTeam'];
        let away_team = response[i]['AwayTeam'];
        let stadium = response[i]['Location'];
        let group = response[i]['Group'];
        let matchNumber = response[i]['MatchNumber'];
        let roundNumber = response[i]['RoundNumber'];
        let Match = {
            localTime,
            day: day_month[0],
            month: day_month[1],
            home_team,
            away_team,
            stadium,
            group,
            matchNumber,
            roundNumber,
            date,
            time,
        };
        all_match.push(Match);
        randerDom(Match, match_by_date);
    }

    function fBg(group) {
        return all_match.filter((g) => {
            return g.group.includes(group);
        });
    }
    let filter_by_group = [
        ...fBg('Group A'),
        ...fBg('Group B'),
        ...fBg('Group C'),
        ...fBg('Group D'),
        ...fBg('Group E'),
        ...fBg('Group F'),
        ...fBg('Group G'),
        ...fBg('Group H'),
    ];
    for (let j = 0; j < filter_by_group.length; j++) {
        randerDom(filter_by_group[j], match_by_group);
    }
}
fetchMatch();
