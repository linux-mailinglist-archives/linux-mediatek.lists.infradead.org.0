Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1099F9AE96
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 14:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mo6U2Tn93M3yYLX+4+DOKrJlOYLqxHZ1iTI+8+BEWic=; b=QiWQujWMuiHpAl
	L8V7Z6mBrFk6OzXtL0zOmLKDXbhoUjUO5N4m2U4/ztBowJUAmkAayfQU31V7JK79EJ6o3WejAAM+c
	WTBZjS5ee5+8KPpyuo+Y0MdfMvdoU7HEQdHWaJdJwKkGYE0fqhoqos6UCZXDuGyrQ/K6tamuRlrrq
	gT5P1cLWuib+3xVsRpdBqmD4tGGyob0+hlG2FcJlWZSgKxAHSO8Qp1BWto0/8ELbaXn729Ev4VnFC
	4bwL/Cr0yfaDna+lT6lAndRf2SdTWF7IObGVGJ8epCMgpJedD3JUV6UNyFh8GX3wXY2U4+yGKPo3k
	9NI47COCNwvxwTPYLiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18F9-0004zU-O6; Fri, 23 Aug 2019 12:00:35 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18F6-0004ya-Ck
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 12:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566561616;
 bh=7uurcdjt1pmuPWMDE7aso5Yad1UCHW6aP/em6TNpjuY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Mfz0sRoaAZdo1EVRhSEewVIdbP3GGiVgQiWc4Y5gwYCCJymIoiUrXSbGqaL6ujXKp
 VCHKiKyQ0mG246vLmsRpYVESsx3NThbOE8KD38pmCFAbMF9rNJ+f73EoMWghYbrV1y
 oFV1lSg4UV+6jLBuJxGM1IqGWn6Ss9vGElBRY9q0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.8] ([217.61.154.8]) by web-mail.gmx.net
 (3c-app-gmx-bs11.server.lan [172.19.170.62]) (via HTTP); Fri, 23 Aug 2019
 14:00:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-2f905f45-85d8-4343-8613-31dda5f7556f-1566561616610@3c-app-gmx-bs11>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Mark Brown" <broonie@kernel.org>
Subject: Aw: Re:  Re: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
Date: Fri, 23 Aug 2019 14:00:16 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190823100424.GL23391@sirena.co.uk>
References: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
 <20190822193015.GK23391@sirena.co.uk>
 <trinity-5d117f0d-9f34-4a2b-8a12-1cd34152c108-1566505724458@3c-app-gmx-bs43>
 <20190823100424.GL23391@sirena.co.uk>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:4oV9+ee+6El0HLRs2W95csYW5AXq49DnxYVQONxY9IZMFf61P45ZDW+O+/cY9Xfhy/liD
 5yba4Mn1sDmlhLQXQmi4hpVI+CgHG+jge9lMRX8PMEcMzJOlYwQ5WiNeVHB67YWUfd4C/SNCeHuc
 Lc4iVTwPptXGTxjj6qX/obf7YOID6e62FAkh7Y/8Xg6r7xlOQoYpRyErSZ01KgWioHfyEWrTxMfh
 jFQjB/JfbwjwaVXWqzdPAcE813uRh1+9pidEoT266QA3raAaKhnYmOb9IfTUDuNb6iipSGLFxm1k
 JQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1gveNljnRH4=:IFYeteQjU1im3ch0YoBiil
 tatpL2DwoDvC8wCdBuUoQXu9CycEhxXWGet+e52M7NHdBL62FlVlBvNAlJM9LlhR7VqQxMBlT
 gSskEcZVO6TtErPk7cVCGmhAE4vGHVhb3tP+4GDV/eu3fCEifLLad80tqBUfqQpTjeBeoSDbJ
 UzgdqSeSBziaxcXCwlVUb+DhQRIrLi9Da9H7/3XANr/NPnm7nfPBOm/d9PVXt+hpfWlRDYzDB
 3J/8xSblKKhM3ZurWTqaXkxEjZycLXS7/lEsEXL+DymJKtxwpYmdeZtDSDRtWq11t0oU0Qg8m
 rTOPf7RE3tv29UdwTOhJ63D25OW1h3z8TIM0/ur1AXsc9aJCQIknpONNZFJuwCgOa6EWWXi0D
 B4syyeSGSInU6VlHwUIojk3GYnYkiqVFnw3m6doBEnLJFy9jK0MtUzP6cHCeoyWgyh+6KgQbg
 nL3pvNy1Sp5dgo1f3F0mk6BCYzy16dzSq037cRDMrQyllm0vSgsy4vQ88LEjY7Izr7aL1Sm/w
 Sgrx1R3mkPfYjLAx6vawbefupVYV+0dSy/Z1ImZNLyo3fX0hR020iBc4DlkB08KTlJ5TuTx3C
 TpeTxhTk5f+7GpiomFTOSCBCQJyB5uaNugoUMWEeXHyfHbedfJ0Fxpk+XkrExV2NlRo1ZeDej
 e41UGpXVIzkG9N1VpmYHT3xJXIQYSiCEHdu56SmwfDhxLrQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050032_758349_663FF535 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Gesendet: Freitag, 23. August 2019 um 12:04 Uhr
> Von: "Mark Brown" <broonie@kernel.org>

> Can you run a git bisect to try to identify the commit that
> caused things to fail?

i have not figured out, how to rebase linux-next on my current (working) codebase :) (failes on file untouched by me at Patch 3/7000+)

> Look to see if there is a device driver bound to that device, or
> check if the parent regulator is visible in /sys/class/regulators.
> You'll also see a mesage printed out for each regulator as it
> instantiates in the boot logs, you can check there too.

in working version i only get this message in dmesg which
looks like a device-binding:

mt6323-regulator mt6323-regulator: Chip ID = 0x2023

this is my regulator: mt6323_vpa_reg

defined in arch/arm/boot/dts/mt6323.dtsi

&pwrap {
	pmic: mt6323 {
	  mt6323regulator: mt6323regulator{
		compatible = "mediatek,mt6323-regulator";
		mt6323_vpa_reg: buck_vpa{
			regulator-name = "vpa";
			regulator-min-microvolt = < 500000>;
			regulator-max-microvolt = <3650000>;
		};
	  };
	};
};

parent regulator is then
mt6323regulator: mt6323regulator

which is the one i see i dmesg.

in working version i see the regulator in sys-fs

cat /sys/class/regulator/regulator.*/name | grep vpa
vpa

-------------------------------------------------------------------

so, now to the non-working regulator:

dmesg do not have such entry ;(

regulators-list in /sys/class only containing the dummy and some fixed regulators

cat /sys/class/regulator/regulator.*/name
regulator-dummy
fixed-1.8V
fixed-3.3V
fixed-5V

in arch/arm/boot/dts/mt*.dts and Makefile there is no change between
working and non-working version.
in drivers/regulators only the 2 files where i had reverted the
changes manually without success.

where can be the cause for no more binding main-regulator?

are these strange messages related to this problem?

mtk-cpufreq mtk-cpufreq: failed to initialize dvfs info for cpu0

another strange line is this:

mt6397 1000d000.pwrap:mt6323: unsupported chip: 0x0

so the pwrap above regulator is affected too

and here are many changes in 2 files...

git diff --name-only non-working..working -- drivers/mfd/mt6397-*
drivers/mfd/mt6397-core.c
drivers/mfd/mt6397-irq.c

which brings me to this 2 commits:

a4872e80ce7d mfd: mt6397: Extract IRQ related code from core driver
708cb5cc3fde mfd: mt6397: Rename macros to something more readable

after reverting those 2 regulators are working again.
Adding both Signed-off-People to CC to keep them informed that a fix is needed

> Please fix your mail client to word wrap within paragraphs at something
> substantially less than 80 columns.  Doing this makes your messages much
> easier to read and reply to.

i currently write in webmailer, where i cannot set this setting,
i try to add manual linebreak in long lines, ok?

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
