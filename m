Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316ACB412E
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Sep 2019 21:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2ucpxDDAsDE7eNKYgRqGREAg5uD5DwZEa5dzJCy8zSo=; b=Pan
	6xY0GTCprPvIH21wLkWnojZDX6ErOQdGObt957Biw18aem+lVZzs/MPcVstTikiHYMzu+N34spMYO
	vY7Yy77CYBV0mX8UaUJRyN5MMwzLnlzzQhy0unk7F6FhSnf29ImHZNBDbH4SCzzpX5g9PYfhZXMzt
	bbFk1hoJjpX9QIlWrks86pnaqCIR1p/Il4y4SiUzq98ClV40FLpm8Np1vKa+NyDW2Fjfzg4Ndz6fy
	ZpJATrHMBcbipWqBgjxcAuzqGLsTpH1m00BgiID2RU/yQ2IN8dG1y9lpMxOa9cwckkHgtqgDhTRV6
	oIm1PFWSsUEG86LVwgvcC99RpvnVgZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wnI-0008B5-PS; Mon, 16 Sep 2019 19:36:16 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wnA-0008AS-Cq
 for linux-mediatek@lists.infradead.org; Mon, 16 Sep 2019 19:36:14 +0000
Received: by mail-oi1-x236.google.com with SMTP id w17so774316oiw.8
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Sep 2019 12:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=k9Yn/KbsDbKmxuENfJgB2/OqFBhegDNzN/DYraKnGzs=;
 b=EYq9/QKdcab//VCegqruDlWQDbDHn08Y4sljnSs0yLZxf4AbhDcZy61WN2pYkjx7KB
 ufQ3XiTO5ET/j4VQOFb4wJc2p0SRd/iqt/zQwfOuJGdFXddTrokM3HtFd/ED8aUsqvMV
 6bEz9QDjihtOLkDYm5wvhucWTt3dwmVIuM7maPRZ2ngFVcKCMwwm1aBR0eOmdAglCDkO
 i3HLxh7ZX7pX6TjGB3w8vVWNxfRff2z6NQ5X0RzuKRkHgya6BVT57Nj5XbJm/NyOioxy
 DZ7D7AHB5X4lze8SKf5yxzioMrI88R/4Fq/y75gOWYxB2xrx4m45n3IZhAwH6MX/Jj80
 +MgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=k9Yn/KbsDbKmxuENfJgB2/OqFBhegDNzN/DYraKnGzs=;
 b=ftW9WmJGAYGS4ZjMxcfdoukf88WmJNLYo77x1to+5HM0gtooFEXd5bKIDXUJx6jgK6
 QhFm97w2/yxOn6cSlUy+hYbjTuarkZ8GTg8mmisVmVCeRuiK+5E+J4PR4gV7hO/C8Wcw
 h19enmjJY8X5/fr5PhEE61JtFKm5yfS5H7f1BaZVUJkzA0USjUWiemXo+6q5+6c2tE0S
 tWVn258bM7gj1O6zXYj42OPuX26dEmmB0dbjxaGeHvH8ZwcTzmmVipT/Qi9AQzj6CfJ5
 sIidYXLjZSpuf/l4+1V2LQX6NBmk6OF4SOT6yM6XjfifUhOSUriT7hYfBAn0XDCswoxL
 QWnA==
X-Gm-Message-State: APjAAAU/125KBWx/kFI1S/iCag+DnepYsZZC2Z9Tk2vMpqhfsFOzLZ5m
 J0kz9xjxU5jehvmE8FSc5Phl7H9DIgCCAVvd9Y0Wph4G
X-Google-Smtp-Source: APXvYqzPloXklLHBNuFqsCo9LtVSXWpACvlNCMq9gswLx7KfswDN3yVoocs+kO2cPVqvq44hiN3D9RMAF4+IFC+tVJ8=
X-Received: by 2002:a05:6808:a87:: with SMTP id q7mr791685oij.40.1568662564532; 
 Mon, 16 Sep 2019 12:36:04 -0700 (PDT)
MIME-Version: 1.0
From: Adam Boardman <adamboardman@gmail.com>
Date: Mon, 16 Sep 2019 20:35:53 +0100
Message-ID: <CABvHX8jSL=UrZ8iVXPOmHEMOm7fkNCim3P0hepOcQB=hP2pGyA@mail.gmail.com>
Subject: Mainline kernel for Gemini PDA (MT6797*)
To: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_123608_462954_03521F15 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adamboardman[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I'm new to kernel work and I've started working on trying to get a
mainline kernel build working for the Gemini PDA (X25/X27 - MT6797*).

I've pulled in a recent mainline[1] and then added Jasper's fixes[2]
and Jimmy-Yj's[3], then tried turning on Manivannan's[4] pinctrl
driver and adding a couple of simple device drivers (vibrator & led
controller). Neither work as not enough other things are ported or
things on the mainline have changed in incompatible ways.

The mt6397_probe (for MT6351) fails at the dev_get_regmap stage. Which
looks to be related to the mt6797 picking Paris (pinctrl v2) for this
device which has none of the regmap code that only features in Moore?

The current state is that I can boot to a BusyBox shell over a
USB-UART cable[5], mount the debugfs etc. Best not to stay there too
long as the chip soon overheats, 20-30 mins is enough such that after
a reboot to a working 3.18 kernel it will only mount the file system
read-only due to thermal overload, give it a few mins to cool, another
reboot and its all good again.

For the over heating I suspect the fact that Jasper commented out the
cpu-idle-states could be related, though there are so many parts to
these cpus I wouldn't be certain. Putting the idle states back results
in a booting kernel to the point that the initramfs calls 'udevadm
settle' and freezes there or in the subsequent call to the busybox
shell.

I might need to investigate extra devices which I see no mention of so
far in the gemini pda dts[6]. So any advice on the right order or any
examples for other similar devices would be great. Also how to
test/verify each one is working correctly? I'm not requesting the full
list ordered, just the top 5-10 items that'll get me to a stable state
where the device can live without likelihood of damage. I can than
pick off the others as I choose, quite a lot are obvious from the
names. The power management+thermal side strikes me as a good first
focus?

Whats the mainline status for battery and charge support, the 3.18 kernel has:
MTK_SMART_BATTERY, MTK_HAFG_20 and MTK_PUMP_EXPRESS_PLUS_SUPPORT
Anyone working on their equivalent?

For the i2c busses to have a chance to work I would also need to
define: mtk_i2c_compatible mt6797_compat in
drivers/i2c/busses/i2c-mt65xx.c but I've no idea how to extract the
needed values from the 3.18 source as the code is too different to
easily know what to look for. Indications from pinctrl-mt8183.txt
suggest that I might also need to add i2c0_pins_a style references to
pio: pinctrl but the 8183 device appears to have no i2c just spi, and
then pinctrl-mt6797.txt has no mention of i2c, is that the case? again
I'll need a pointer in the direction of figuring out the values.

I have only publicly available data sheets so far[7], and the original
kernel[8].

I've left in Jaspers cmdline force to limit it to one cpu, I don't
know if this is necessary, usually this is overridden by lk to limit
it to 5. Also of possible interest I've put in Jaspers mt6797 debugfs
and whilst some bits of it now work I've no great notion of how to
make use of it.

Any help greatly appreciated,

Adam.

PS: The Cosmo Communicator has the P70 so this will all need doing
again for the MT6771, anyone started on that?

--

[1] - https://github.com/gemian/linux (working branch)
[2] - https://github.com/Jasu/gemini-pda-buildroot (2/3 patches mainlined)
[3] - https://patchwork.kernel.org/patch/9889457/ (and related)
[4] - https://patchwork.kernel.org/patch/10672803/ (already in mainline)
[5] - https://www.omegamoon.com/blog/index.php?entry=entry180626-210224
[6] - Long list of items from 3.18 dts as yet unknown to mainline -
power_gs, toprgu, sleep, mcucfg, rt5735, pericfg, dramc, gpio, apxgpt,
rsvd, hacc, fhctl, devapc, ddrphy, bat_meter, topmisc, mdcldma,
aes_top, mcumixed, mcufhctl, c2kmisc, modem_temp, scpdvfs, emi,
sys_cirq, m4u, efusec, gce, cqdma, mipi, gic/gic1, pwm, spi,
therm_ctrl, eem_fsm, btif, dvfsp, itrx, audiosys, usb, xhci, mjcsys,
mfgsys, mali, dispsys, mdp, disp, smi, dip, dpe, consys, wifi, camsys,
vcorefs, pmic_clock_buffer_ctrl, ext_buck, chr, fusb301a, sii9022,
sm100, accdet, swtp, battery, gps, gsensor, humidity, gyro, hall,
switch, fpc1145, als, gpio_usage_mapping, cap_touch, solomon_touch,
aeon_gpio
[7] - https://github.com/gemian/gemian/wiki/HardwareHacking
[8] - https://github.com/gemian/gemini-linux-kernel-3.18

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
