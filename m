Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380EAB5042
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 16:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8JVVK7x76BI4JsN29eBzZkvZjWltH9wXx/3c36HV6I=; b=LDXB5Cpm9OJrz0
	nUz6cDF9pI01gmqkaFOUD+jzKGbn2mLGtLutDOxMq6ZUfDGleLOvWrRdh3G+HilQN18qZYs/COtqq
	na8Zo4G+3QoHp7oARzEvcYT2u1xlMM2g/iRyB+iIvip5rp1dALEiZWd4Skc/xySz8lXARvqTNmj5n
	s2uYfqiEB440XnDQrWUoOJqZrrGqtUPhwxxfvYs1qJXxb0yLx8E2dcSnQgVV/nh2o+kIICT+mh/61
	9AGK5B05Z6eNQxh2K9+CN8oF5nHv7LoleHog2l1Wopf6Jk9rqvVZnTCGIgG6b/Q8B2Y0R5kOo4I5U
	UYJ6Y8SqXR9chLbrr6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAENg-0000PK-3b; Tue, 17 Sep 2019 14:23:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAENc-0000OK-0F
 for linux-mediatek@lists.infradead.org; Tue, 17 Sep 2019 14:22:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so2110535pgi.6
 for <linux-mediatek@lists.infradead.org>; Tue, 17 Sep 2019 07:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pV9GsIi3yV5AyuRERN6IHF8jYMQrd7kYxVh64i0xFYU=;
 b=B5Unm35uNTVGW3osCdB26d3L6HldU51uj4PO5Frc6WofmIP5XNXZVPwE+4TEfwq7Ze
 La3h+EQ9+N3fICoTJyR5VNhrb0pSlTxmeCkLv5/BcvRuMARzCTWnv4Ggpgm4Rubtz70x
 cDlYdEx2Ujd4CxjAAQznFkKISg7+fr59+bFODWvy+eJ9t5xYqH6wbfIVJCT3sNVOxOmw
 lk1kkRPpTeffg/hWGj2q5LSOdroet8QV7iqnmniLakMsPwSR4VnKT7/0BsLJktp261Tq
 TiAQqsqqWxhH6yXMi9+YuijEQb4hmvYvEGKMnZePaNbEix+647ZvzPvAibgW4jmuQs+c
 yRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pV9GsIi3yV5AyuRERN6IHF8jYMQrd7kYxVh64i0xFYU=;
 b=RmXO6+O/hkD3J1IaCRAQFRX6BbGXx8eUEnN0MuHfzqyqQSG0zmmKV66GThERAdHpPX
 Sw2pMkkhrJ6Lkhbk+RmEmlpDqIMLq4ZdWCEVs0bbsg8Orn90CtCENMnh7Nbf3HbSIwD5
 NSw4pKV0JuZ7tjDNhGBIdXINFQzuppeU8YjSjKTwdsjvHlTONeD7p525DtMX+LQ+ScxV
 QPHvBtCbpQ7L2zgqjhkVHZbvgk6SIthZgp2NqU/7khiM8QxB007NG26LLT9oTDk6ylvC
 9BNOXcbwHZktzN46hPzEj5SIHnWDqOxRu/nykWii+t4CfhuuLlOmC+UBZrkJscKXMklv
 vGhw==
X-Gm-Message-State: APjAAAW5ofCCjlPosXczBviwjpvr2PKNVteAp982yTOVu2ntLYf1U/JN
 R9/e56YAZtR+Rrdzr8nZbe3S
X-Google-Smtp-Source: APXvYqzy7LTCfCZcrH13TWHrGK5cUWaE4xo+nf1kYD5t5aDaL+04G7L/beZ3n5+MK8WFq1hmbcbMAA==
X-Received: by 2002:aa7:818a:: with SMTP id g10mr4566317pfi.41.1568730174485; 
 Tue, 17 Sep 2019 07:22:54 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:111:7ed:a5e8:5d68:63e2:d674])
 by smtp.gmail.com with ESMTPSA id f128sm8775299pfg.143.2019.09.17.07.22.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Sep 2019 07:22:53 -0700 (PDT)
Date: Tue, 17 Sep 2019 19:52:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: Mainline kernel for Gemini PDA (MT6797*)
Message-ID: <20190917142247.GA15832@Mani-XPS-13-9360>
References: <CABvHX8jSL=UrZ8iVXPOmHEMOm7fkNCim3P0hepOcQB=hP2pGyA@mail.gmail.com>
 <d127a5d6-6525-d638-7090-765bcd4dd592@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d127a5d6-6525-d638-7090-765bcd4dd592@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_072256_079798_D65DE6AF 
X-CRM114-Status: GOOD (  43.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mediatek@lists.infradead.org, Mars Cheng <mars.cheng@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Adam Boardman <adamboardman@gmail.com>,
 Fran Quinto <fran.quinto@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 04:08:51PM +0200, Matthias Brugger wrote:
> 
> 
> On 16/09/2019 21:35, Adam Boardman wrote:
> > I'm new to kernel work and I've started working on trying to get a
> > mainline kernel build working for the Gemini PDA (X25/X27 - MT6797*).
> > 
> > I've pulled in a recent mainline[1] and then added Jasper's fixes[2]
> > and Jimmy-Yj's[3], then tried turning on Manivannan's[4] pinctrl
> 
> Jaspers clock fixes are upstream, same for the pinctrl. We are missing the
> SCPSYS part. Seems it fall through my cracks. If you want then just rebase and
> resend it with your Signed-off-by and I can review them.
> 

I worked on the EINT support quite a while ago and didn't finish it off.

https://git.linaro.org/people/manivannan.sadhasivam/96b-common.git/log/?h=mt6797-eint

Maybe I'll try to get to it at Linaro Connect!

> > driver and adding a couple of simple device drivers (vibrator & led
> > controller). Neither work as not enough other things are ported or
> > things on the mainline have changed in incompatible ways.
> > 
> > The mt6397_probe (for MT6351) fails at the dev_get_regmap stage. Which
> > looks to be related to the mt6797 picking Paris (pinctrl v2) for this
> > device which has none of the regmap code that only features in Moore?
> > 

It's been a while since I booted my X20. And for sure the Mediatek pinctrl
drivers were gone a bit a refactoring in recent timers, so it could've broken
(I'm not sure).

> 
> Adding Sean as he is pretty much into the pinctrl implementation of MediaTek.
> 
> > The current state is that I can boot to a BusyBox shell over a
> > USB-UART cable[5], mount the debugfs etc. Best not to stay there too
> 
> Nice, didn't know the USB-UART cable works.
> 
> > long as the chip soon overheats, 20-30 mins is enough such that after
> > a reboot to a working 3.18 kernel it will only mount the file system
> > read-only due to thermal overload, give it a few mins to cool, another
> > reboot and its all good again.
> > 
> > For the over heating I suspect the fact that Jasper commented out the
> > cpu-idle-states could be related, though there are so many parts to
> > these cpus I wouldn't be certain. Putting the idle states back results
> > in a booting kernel to the point that the initramfs calls 'udevadm
> > settle' and freezes there or in the subsequent call to the busybox
> > shell.
> > 
> 
> Did you try the plain upstream versions? Any of the two [1] [2] should bring you
> to pretty much the same point, serial console with a busybox initramfs.
> I personally don't have the Gemini PDA but the 96 board [3], but I didn't
> experienced any over-heating.
> 
> > I might need to investigate extra devices which I see no mention of so
> > far in the gemini pda dts[6]. So any advice on the right order or any
> > examples for other similar devices would be great. Also how to
> > test/verify each one is working correctly? I'm not requesting the full
> > list ordered, just the top 5-10 items that'll get me to a stable state
> > where the device can live without likelihood of damage. I can than
> > pick off the others as I choose, quite a lot are obvious from the
> > names. The power management+thermal side strikes me as a good first
> > focus?
> 
> As a good first focus I'd try to get the MMC driver working.

Agree. 

> I started on this
> some time ago but got side tracked. From what I saw, you need to implement
> pmic_wrapper and pmic as you will need some regulator for the MMC.

But you can always rely on bootloader to take care of the regulators
and work on MMC. Of course we can't switch the regulators for varying
the speeds but it is not a blocker.

Thanks,
Mani

> I had a quick look on the pmic/pmic_wrapper in the repo you mentioned. Maybe
> Mars (in CC) can help with his knowledge to understand if we can re-use an
> already implemented pmic/pmic_wrapper or if we have to enhance them/write new
> drivers.
> 
> > 
> > Whats the mainline status for battery and charge support, the 3.18 kernel has:
> > MTK_SMART_BATTERY, MTK_HAFG_20 and MTK_PUMP_EXPRESS_PLUS_SUPPORT
> > Anyone working on their equivalent?
> 
> Not that I'm aware of.
> 
> > 
> > For the i2c busses to have a chance to work I would also need to
> > define: mtk_i2c_compatible mt6797_compat in
> > drivers/i2c/busses/i2c-mt65xx.c but I've no idea how to extract the
> > needed values from the 3.18 source as the code is too different to
> > easily know what to look for. Indications from pinctrl-mt8183.txt
> 
> Yes, the downstream mt6797 kernel code is heavily modified and it's difficult to
> understand what's the exact difference.
> 
> > suggest that I might also need to add i2c0_pins_a style references to
> > pio: pinctrl but the 8183 device appears to have no i2c just spi, and
> > then pinctrl-mt6797.txt has no mention of i2c, is that the case? again
> > I'll need a pointer in the direction of figuring out the values.
> 
> I think the datasheets [4] should tell you which PINs have i2c functionality.
> You could try to use the schematics of the reference board [5] maybe you are
> luky and they haven't swapped the pins.
> 
> > 
> > I have only publicly available data sheets so far[7], and the original
> > kernel[8].
> > 
> > I've left in Jaspers cmdline force to limit it to one cpu, I don't
> > know if this is necessary, usually this is overridden by lk to limit
> > it to 5. Also of possible interest I've put in Jaspers mt6797 debugfs
> > and whilst some bits of it now work I've no great notion of how to
> > make use of it.
> 
> I don't think this is necessary. AFAIR I can boot without limiting the CPUs.
> 
> > 
> > Any help greatly appreciated,
> > 
> 
> I'm happy to see you are interested in mt6797 upstreaming.
> Hope my respond helps.
> 
> See you,
> Matthias
> 
> [1]
> https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt6797-evb.dts
> [2]
> https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts
> [3] https://www.96boards.org/product/mediatek-x20/
> [4] https://www.96boards.org/documentation/consumer/mediatekx20/additional-docs/
> [5] https://www.96boards.org/documentation/consumer/mediatekx20/hardware-docs/
> 
> > Adam.
> > 
> > PS: The Cosmo Communicator has the P70 so this will all need doing
> > again for the MT6771, anyone started on that?
> > 
> > --
> > 
> > [1] - https://github.com/gemian/linux (working branch)
> > [2] - https://github.com/Jasu/gemini-pda-buildroot (2/3 patches mainlined)
> > [3] - https://patchwork.kernel.org/patch/9889457/ (and related)
> > [4] - https://patchwork.kernel.org/patch/10672803/ (already in mainline)
> > [5] - https://www.omegamoon.com/blog/index.php?entry=entry180626-210224
> > [6] - Long list of items from 3.18 dts as yet unknown to mainline -
> > power_gs, toprgu, sleep, mcucfg, rt5735, pericfg, dramc, gpio, apxgpt,
> > rsvd, hacc, fhctl, devapc, ddrphy, bat_meter, topmisc, mdcldma,
> > aes_top, mcumixed, mcufhctl, c2kmisc, modem_temp, scpdvfs, emi,
> > sys_cirq, m4u, efusec, gce, cqdma, mipi, gic/gic1, pwm, spi,
> > therm_ctrl, eem_fsm, btif, dvfsp, itrx, audiosys, usb, xhci, mjcsys,
> > mfgsys, mali, dispsys, mdp, disp, smi, dip, dpe, consys, wifi, camsys,
> > vcorefs, pmic_clock_buffer_ctrl, ext_buck, chr, fusb301a, sii9022,
> > sm100, accdet, swtp, battery, gps, gsensor, humidity, gyro, hall,
> > switch, fpc1145, als, gpio_usage_mapping, cap_touch, solomon_touch,
> > aeon_gpio
> > [7] - https://github.com/gemian/gemian/wiki/HardwareHacking
> > [8] - https://github.com/gemian/gemini-linux-kernel-3.18
> > 
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
> > 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
