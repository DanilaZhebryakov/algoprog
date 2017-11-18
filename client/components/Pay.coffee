React = require('react')

Pay = (props) ->
    tab = if props.myUser?.userList == "stud" then "stud" else "school"
    <div>
        <h1>
        {if tab == "stud" then "Оплатить занятия" else "Поддержать занятия"}
        </h1>
        {
        if tab == "school"
            <div>
                <p>
                    Вы можете поддержать занятия, переведя мне любую сумму денег на карту Тинькофф-банка номер 5213 2437 3487 7507.
                    Например, для перевода вы можете воспользоваться {" "}
                    <a href="https://www.tinkoff.ru/cardtocard/">сервисом перевода с карты на карту Тинькофф-банка</a>,
                    там по идее должно быть без комиссии, или любым другим сервисом по переводу денег с карты на карту.
                </p>
                <p><b>При этом, пожалуйста, никак не указывайте, кто именно переводит деньги, и не сообщайте мне, что вы их перевели — я не хочу знать, кто из школьников мне переводит деньги, а кто нет.</b>
                </p>
            </div>
        else
            <div>
                <p>
                Стоимость занятий для вас составляет <b>1500 рублей в месяц.</b> Оплачивается отдельно каждый календарный месяц
                занятий (с первого числа по первое число). Если вы начинаете заниматься в середине месяца,
                то сначала платите до конца этого месяца. Первая неделя занятий бесплатна.
                </p>

                <p>
                Вы можете оплатить занятия, переведя мне любую сумму денег на карту Тинькофф-банка номер 5213 2437 3487 7507.
                Например, для перевода вы можете воспользоваться {" "}
                <a href="https://www.tinkoff.ru/cardtocard/">сервисом перевода с карты на карту Тинькофф-банка</a>,
                там по идее должно быть без комиссии, или любым другим сервисом по переводу денег с карты на карту
                (но тогда проверяйте размер комиссии самостоятельно).
                </p>

                <p>Кроме того, если вы находитесь в Нижнем Новгороде, можно где-нибудь пересечься и заплатить наличными.</p>

                <h2>Возможен ли возврат денег?</h2>
                <p>Стоимость не зависит от того, насколько вы активны в курсе (если вы решаете много, то я буду на вас тратить больше времени, чем если вы решаете мало, а вы платите одну и ту же сумму). Поэтому довольно странно возвращать деньги, если вы не делали ничего. Поэтому политика такая:</p>
                <ul>
                <li>Если вы по объективным непредвиденным причинам не могли заниматься в курсе более 5 дней подряд (сломали руку и т.п.), то я вам верну деньги за весь период, когда вы не могли заниматься. Предсказуемые вещи типа поездок, сессии и т.п. сюда не считаются.</li>
                <li>Если вы по каким бы то ни было причинам не занимались более 10 дней подряд, то я вам верну половину денег за этот период.</li>
                <li>Конечно, если я по каким-то причинам не мог проверять ваши решения и отвечать на ваши письма в течение более чем 5 дней подряд, то я вам верну деньги за весь этот период.</li>
                </ul>
            </div>
        }
    </div>

export default Pay
