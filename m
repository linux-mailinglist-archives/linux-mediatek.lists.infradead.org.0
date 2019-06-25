Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B2155B53
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C1zx+LdZZ3aqBrCfVQf2c2jQNkhGApaoO5b8NbgLhqA=; b=WWztGyGrbfAPJr8+MqwAx8M+Y
	/9fDaPBDxNfvu30+CF4WSK7f0ZH/sd2JPJyxOOps1AvgG0M9DTMv+tz8U30isDEymoJmK/x6ofS1Q
	BkPhNd+IauCKfnZHOLQ7cz/w7khLo69Fj/wyKWkm0BS+gnByFUJy8wTZi9vanFWFPCUt7c7pXOXG9
	pWmA0sXh6R0Wvck/nDMs1Mh9W7+WRS6Z/Mw+RuejJ+fHlkBgWQ17xZHzip28j108R2hrRPIAJ9Soa
	uhHMYamxorqtGgx3hh7A6pfP83hAMIMZzoA//iBOo7T2HzVCQaoLkpUxuGKKWKfdcLoDJTqIsSxXS
	qEngk/8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu2Y-00040m-Gn; Tue, 25 Jun 2019 22:35:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfu2Q-0003yP-Uo
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 22:35:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id E0BD7260A4C
Received: by earth.universe (Postfix, from userid 1000)
 id C0DCE3C08D5; Wed, 26 Jun 2019 00:35:37 +0200 (CEST)
Date: Wed, 26 Jun 2019 00:35:37 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: Re: [PATCH] test_power: Add CURRENT and CHARGE_COUNTER properties
Message-ID: <20190625223537.6dlcooifqfs2rv2b@earth.universe>
References: <1557828298-16591-1-git-send-email-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1557828298-16591-1-git-send-email-lecopzer.chen@mediatek.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153543_285341_5B031475 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: yj.chiang@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8800818415967964704=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============8800818415967964704==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i4lf3yrmw6f6ubgm"
Content-Disposition: inline


--i4lf3yrmw6f6ubgm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 14, 2019 at 06:04:58PM +0800, Lecopzer Chen wrote:
> From: "Lecopzer Chen" <lecopzer.chen@mediatek.com>
>=20
> Emulate battery current (variable) and battery CHARGE_COUNTER
> (same as battery_capacity) properties.
>=20
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> Cc: YJ Chiang <yj.chiang@mediatek.com>

Thanks for the patch and thanks for taking care of testing infrastructure.
I don't think it's a good idea to use CHARGE_CAPACITY/CHARGE_NOW also for
CHARGE_COUNTER. CHARGE_COUNTER may be negative, but capacity should not be
negative. Also the patch should be splitted (one for the current feature and
one for the charge counter feature). Last but not least I don't see any
conversion from mA to =B5A. The userspace sysfs ABI should always
return =B5A.

-- Sebastian

> ---
>  drivers/power/supply/test_power.c | 33 +++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>=20
> diff --git a/drivers/power/supply/test_power.c b/drivers/power/supply/tes=
t_power.c
> index 57246cdbd042..9f85060c84de 100644
> --- a/drivers/power/supply/test_power.c
> +++ b/drivers/power/supply/test_power.c
> @@ -36,6 +36,7 @@ static int battery_present		=3D 1; /* true */
>  static int battery_technology		=3D POWER_SUPPLY_TECHNOLOGY_LION;
>  static int battery_capacity		=3D 50;
>  static int battery_voltage		=3D 3300;
> +static int battery_current		=3D 1600;
> =20
>  static bool module_initialized;
> =20
> @@ -101,6 +102,7 @@ static int test_power_get_battery_property(struct pow=
er_supply *psy,
>  		break;
>  	case POWER_SUPPLY_PROP_CAPACITY:
>  	case POWER_SUPPLY_PROP_CHARGE_NOW:
> +	case POWER_SUPPLY_PROP_CHARGE_COUNTER:
>  		val->intval =3D battery_capacity;
>  		break;
>  	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
> @@ -117,6 +119,10 @@ static int test_power_get_battery_property(struct po=
wer_supply *psy,
>  	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
>  		val->intval =3D battery_voltage;
>  		break;
> +	case POWER_SUPPLY_PROP_CURRENT_AVG:
> +	case POWER_SUPPLY_PROP_CURRENT_NOW:
> +		val->intval =3D battery_current;
> +		break;
>  	default:
>  		pr_info("%s: some properties deliberately report errors.\n",
>  			__func__);
> @@ -138,6 +144,7 @@ static enum power_supply_property test_power_battery_=
props[] =3D {
>  	POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN,
>  	POWER_SUPPLY_PROP_CHARGE_FULL,
>  	POWER_SUPPLY_PROP_CHARGE_NOW,
> +	POWER_SUPPLY_PROP_CHARGE_COUNTER,
>  	POWER_SUPPLY_PROP_CAPACITY,
>  	POWER_SUPPLY_PROP_CAPACITY_LEVEL,
>  	POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG,
> @@ -147,6 +154,8 @@ static enum power_supply_property test_power_battery_=
props[] =3D {
>  	POWER_SUPPLY_PROP_SERIAL_NUMBER,
>  	POWER_SUPPLY_PROP_TEMP,
>  	POWER_SUPPLY_PROP_VOLTAGE_NOW,
> +	POWER_SUPPLY_PROP_CURRENT_AVG,
> +	POWER_SUPPLY_PROP_CURRENT_NOW,
>  };
> =20
>  static char *test_power_ac_supplied_to[] =3D {
> @@ -450,6 +459,21 @@ static int param_set_battery_voltage(const char *key,
> =20
>  #define param_get_battery_voltage param_get_int
> =20
> +static int param_set_battery_current(const char *key,
> +					const struct kernel_param *kp)
> +{
> +	int tmp;
> +
> +	if (1 !=3D sscanf(key, "%d", &tmp))
> +		return -EINVAL;
> +
> +	battery_current =3D tmp;
> +	signal_power_supply_changed(test_power_supplies[TEST_BATTERY]);
> +	return 0;
> +}
> +
> +#define param_get_battery_current param_get_int
> +
>  static const struct kernel_param_ops param_ops_ac_online =3D {
>  	.set =3D param_set_ac_online,
>  	.get =3D param_get_ac_online,
> @@ -490,6 +514,11 @@ static const struct kernel_param_ops param_ops_batte=
ry_voltage =3D {
>  	.get =3D param_get_battery_voltage,
>  };
> =20
> +static const struct kernel_param_ops param_ops_battery_current =3D {
> +	.set =3D param_set_battery_current,
> +	.get =3D param_get_battery_current,
> +};
> +
>  #define param_check_ac_online(name, p) __param_check(name, p, void);
>  #define param_check_usb_online(name, p) __param_check(name, p, void);
>  #define param_check_battery_status(name, p) __param_check(name, p, void);
> @@ -498,6 +527,7 @@ static const struct kernel_param_ops param_ops_batter=
y_voltage =3D {
>  #define param_check_battery_health(name, p) __param_check(name, p, void);
>  #define param_check_battery_capacity(name, p) __param_check(name, p, voi=
d);
>  #define param_check_battery_voltage(name, p) __param_check(name, p, void=
);
> +#define param_check_battery_current(name, p) __param_check(name, p, void=
);
> =20
> =20
>  module_param(ac_online, ac_online, 0644);
> @@ -528,6 +558,9 @@ MODULE_PARM_DESC(battery_capacity, "battery capacity =
(percentage)");
>  module_param(battery_voltage, battery_voltage, 0644);
>  MODULE_PARM_DESC(battery_voltage, "battery voltage (millivolts)");
> =20
> +module_param(battery_current, battery_current, 0644);
> +MODULE_PARM_DESC(battery_current, "battery current (milliampere)");
> +
>  MODULE_DESCRIPTION("Power supply driver for testing");
>  MODULE_AUTHOR("Anton Vorontsov <cbouatmailru@gmail.com>");
>  MODULE_LICENSE("GPL");
> --=20
> 2.18.0
>=20

--i4lf3yrmw6f6ubgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl0SobYACgkQ2O7X88g7
+ppFxg/+KogtQlbL0EWEB9FBygjBTSsXfwoCrx39eIEIqGF9f/CIdn1k/2hI7OKk
2yAYtdIhTJhUgwsjrjscsa7MJ5DnUHVHtzzG+yFGsTx2/86lEBryZ2eiTmCWIgj1
Re12yKd6RN5eUouaqqnIZbilmTWbGQhvEAadB+rygUSfW3bI4f9tvZej1CONx0WV
TSGfLD/XXcNBZgusXWsH6bslKGeV3YkRLZlc3tZAcW+mNhtMDfJbSJhZB1J5kKT1
UZspF6sYr3PMaN7A10bqr0mFeFqd4V/RpFXReQoFO4+EPbS43KyPOFM63LdCeKXV
YgdrGCndTraSbObv1RMQYpe5z3z2CBM9Uxok9zSNNMdxl+o6OAbHbKUTBRdWkCIV
xo6frnnuFCH+Lj0KgXmcePwNaFC5svn8c6/uVv7hMs6g0afICw+ojOne/yf+jsTr
iMfsEwLoR4+hwROrdzqId5LhgPY6INdpQXxNLIy8aAx4e73xSoct5DchamGtCaDl
MVsCVbntiXjJfNgEI6rpVJrsRsHGBh0Ls0xHJhiT/pZpI3ci3D5eDGKLLKOshBGt
k3BKxOkJc4frIf2iBgvy4XkP1ITvI1hiuX9WA6JYMSO0BE+tl1Feu8MFJPH4Hmbt
jA6XHIS8Sw8G+PeO7rX5+CHuzUfCehxKc/rppLZck5eGl5Q6WnY=
=0+K2
-----END PGP SIGNATURE-----

--i4lf3yrmw6f6ubgm--


--===============8800818415967964704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============8800818415967964704==--

