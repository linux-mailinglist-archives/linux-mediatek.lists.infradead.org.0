Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64E299FDA
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 21:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:Message-ID:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YIrmdXTM45l0ZGrs68wbtZQtk9AbiuJJy0ASWW5xZow=; b=Wec/oZ13+Tdyq0
	jm6amlf9/8LseneLOSfcYPTO4zdRVhdQlVGhrnGNpibnUQlohphxTUmUq9Hxn10jbP59fNKZ9+4OV
	7vOcYWJHjQrxBgfUhTGqogFhhugASx4hDIeKoxj7+tLkaaDX/nFj3DZ+nkUn0xyvFe05jrEeNKTun
	2o7R3Zect3Vf5MCxGxrP4jHxGF2akIT4+FOwyEugfNth8pKaNNrcp23kRGdFy2vBDweXu3Xt7iRKJ
	xuKB9huzSJhqUT9NDx5TMQQQAgWwVuhFuxM3yrZkTdeL10Uyh6U6oGHzOrGK0BErnkM64Bvwr65tt
	mJYxccGi+szT4GLbkdVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sgx-0004sN-9a; Thu, 22 Aug 2019 19:24:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sgs-0004s4-PL
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 19:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566501837;
 bh=NpNeLeI+gS2GGYSJDr8S/ivIOUCFCz5f1UMmFg9+C0w=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=VTfI3oF2k9qohyTn446GbuYKUa0xRulhMim8YJaa+TFPFeM1Uv0kf3psMV8WjzoJr
 ZFiuHpZ14E90qjW0tTT53N67gEjzvAZW1J292hcL96Irw7jj+ydR2bYy+FR5PtllGA
 JnauoqrvnrDzeXwfVdafq2uIsyBb6K2UEv7s1FXM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.89] ([217.61.154.89]) by web-mail.gmx.net
 (3c-app-gmx-bs43.server.lan [172.19.170.95]) (via HTTP); Thu, 22 Aug 2019
 21:23:57 +0200
MIME-Version: 1.0
Message-ID: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Liam Girdwood" <lgirdwood@gmail.com>
Subject: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
Date: Thu, 22 Aug 2019 21:23:57 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:f9r3uHKHHbamY6L7y+siJCFDx7adfRfrg4NPWU0VlSWzwn3UIbhajPDTvypqLWh2e2Z87
 nup9CtPrIaq4Yu4tnfsTLcWCkoc+aGqkD0AFXDpmKUQLpRtHncZFtvFtSU01XE+hEZwcrq6NgZqN
 Yhw5n6SBqN5tOsdEPMr1Sxa/naxgvgXcYvpNViu0DpD480qhgxI0vaS8GLWlHzBS1IHw/j/N7ual
 WUhJDReF0HvuP+jg6512sX1g+7o4/gJVDU2IzGLYoCH/Tt7Q2aYVP7vrapy4tMDClOOxSdf/5VNG
 xY=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7fkmO6iHJ9Y=:Vgye3BcdvOM05q6643M7Iu
 zQumxsyp/3XZXOW+H4zutForeCza+q+QcLxgKobSr5NxpAUAt+pv52Zzwwd3WieRAfVRxTZnn
 p/WBhM+t9AC+xlZzDV4HyrKCSyGSonN/GlKntjtWfDd3cX2h8RsonhcFzqz1MHx8qw2dD5t7z
 ocUnRIrL6Ld/zaLGOtaIrjy0zleCipPpjOsob4I36xbEw/tC0DsrU5HnOMtejxpJ2DsWc6TaM
 rxasSXhpdgvmcdiaSpnnDBThPh5Cw/JkLmUWP6dh3O+mz696EUf/civ3veu9HLJ+53J8IQNGn
 joDmO9WNZZLokNElFCjCbckC5axZDSeaqXCoRPhgxqU18f96/dI9/NhPxF6/q3F6sVtPBd6Qm
 mX7ghj12vJZwHJcD9dGNjdLf+VEY28SGKWMQTNSRUqTGZvLz0WPLh09oU6SZNw1FryAQ6TPiF
 3zHPbQNdqKRCvu81Y7w66oqkXTLyWRACP5iGpJlGtl49yInSBYhdMxH4uCI2GW2zOSirKb+/Q
 X89caGMHa16t+uU45PRGoFlIQ7VWSfPrlXHAkcqkFI24tqQ2xLp+dmooSuDXGeizEAvMgizu1
 kYPhw8nevSgP6aR02eFbvJNIbt0Z89/WlIEM8Fqqjc6YQh2fm+zgYyBfcbGsyjeIKpUX7s/tL
 OSywzmj8yEpDW9kId+UK5pqeDI+7zaABjL6HxdkuvuAWu+A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_122411_144264_0FE000DC 
X-CRM114-Status: UNSURE (   4.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

i've encountered a bug in regulator between 5.3-rc5 and next-20190822

i build for bananapi-r2/mt7623 using this branch (includes next-patches):

https://github.com/vDorst/linux-1/blob/c34582d96520566c45068b92e080620458ffc1ff/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts#L166

and noticed that switch does not came up

priv->core_pwr = devm_regulator_get(&mdiodev->dev, "core"); returns 517

located here:
https://github.com/vDorst/linux-1/blob/c34582d96520566c45068b92e080620458ffc1ff/drivers/net/dsa/mt7530.c#L1590

#define EPROBE_DEFER 517/* Driver requests probe retry */

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L1726

seems of_find_regulator_by_node(node); is failing here, but i see the dts-node (mt6323_vpa_reg: buck_vpa) in /sys/firmware/devicetree/...

tried without next-patches and switch came up including dsa-ports.

i found no commit yet which breaks the regulator-setup

any idea about this?

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
