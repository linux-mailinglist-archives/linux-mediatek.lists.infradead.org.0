Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058AAD024D
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 22:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GISLEbooda6GlpGd2s7dufhHLC19Lwlim8qj04lsX3M=; b=fmkvvrPrWRn7XC
	Fpbh+t7XqZwZZQKQUZ7WTd/AePw2ocwN4Om9mSzxeV3e+v8ZRC37qyx4zvwUsWwl+BLoF48cmLNGU
	hwrZODctllapfwwJKeDKVaygBSS/2KdFp333CLq5gYV5jgvKcp58exbzQ4h7ybepvnQ8L0aKljwQr
	fjXtUaLYpM9kowXuTkJDGJPI4Bn4NJPnT5sS8Fqhmfj/jadXWRSKKwWsJC2wqUaoIcbZYbu7uhemr
	VK9Es2qClQLqat2lZ4Uohw+05iavcaZ8XZ59U1H0XdymtogPnQTiVgM4/fevuKf1FMSz4NUGVyhIF
	uaNIouXqFKzxBcHyczXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwLA-0004Ip-84; Tue, 08 Oct 2019 20:44:16 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwL5-0004Ht-VD
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 20:44:13 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 89so15203530oth.13
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 13:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=IYmvtx47VlrzOkPLzsDzatKWjBZsk5MHxUYt7Be5IHg=;
 b=gskiTf2cdusQBZax82eXseT1yx2iFjhl29C0qmjHmEAegabqP2HNDD2nqA3TmyjfVj
 GsyD92xN6h56uzvbAzc0N5jH61QDjIhHOKOdrhmOGcJhKfoCKb3XD1mctKQMkuqujyu7
 uzx5vOyMyu5d1qxrtOsngKllZB3SPgs6Qq2eVkWCzNrO1wHwI/VSjK28j19/9mxxWETQ
 CxCMJ/Khg4S1o8KrFoyaz7v/FpzSlBytiYyz8ljX0SaNf+yYHzuBSgigXQGqYmy7bok0
 rxPibIS2me0N1Wh5KAkerESo/1muVcTFE2l+AlfTO8Z8doWLaBtgZ3jpja/XqiBeeIyf
 q5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=IYmvtx47VlrzOkPLzsDzatKWjBZsk5MHxUYt7Be5IHg=;
 b=q0ux86m4Xfv9oJ0VMiXzi0uJc5+QKWBkLgpdR7q1YOV1UUmHqVVE+0PGt+8xy2O6/u
 TOWacS2Ts5W+l7XSaFKCLeI+Mf85MUeNYxygf3xnwIgBxMHUb1Wy3fuu4FpOwEfanffq
 tQMavg0rcrJgKmaDvm1T3UiO7xE4QO1rWdqHkB8Xkm0GZV4exmWKw8+RMcR55JD3pIBx
 K9/ZTLWqRRtcq3c65mdxAGqRd+vG7ZRIT7DuhHrrJ32Uoy2FFr7bCECXfbNfo0iitXbP
 QHHehalth/3TEEQ7wW1NPM63bKp6CbUxtlBn7ugb6Aal4T1nmhd4WeXlSITipE1AF3rL
 ANOg==
X-Gm-Message-State: APjAAAWz7Wjgbn9TUyXugvY4Pac0O7XctOlFcfo+d55CzF64+DoHHqjE
 /3yeUM+Hbg7B2T7PCRzgXuveL87LpVU6Q3myzf+aUZWM
X-Google-Smtp-Source: APXvYqy8Rg4WKaH27R/B55qId9BdaQql5v3yxC/GD/lwt6QmC5mJZVV0o3dL3QXzAf15eScURhumG/V7bibvGPEVsZ0=
X-Received: by 2002:a05:6830:215a:: with SMTP id
 r26mr128069otd.330.1570567450517; 
 Tue, 08 Oct 2019 13:44:10 -0700 (PDT)
MIME-Version: 1.0
From: Adam Boardman <adamboardman@gmail.com>
Date: Tue, 8 Oct 2019 21:43:58 +0100
Message-ID: <CABvHX8jUNG7S-u69LR5ciPqRCsrC3TTMvWVeOYmEhLVfc5QxFw@mail.gmail.com>
Subject: CPU Thermal sensor - including Kunit tests - for Gemini PDA (MT6797*)
To: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_134412_005738_6321CFF2 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adamboardman[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I've finally got something working, I've added MT6797 definitions to
the thermal driver[A1], it took a few goes to figure out how to
configure the different driver format, including a fix to the existing
code to actually make use of the vts_index, all current mainlined CPU
Thermals appear to have a 1-1 mapping so they probably wouldn't notice
this problem. I also had to comment out the reset[A6] as that failed.

I've also added some test code making use of Kunit[A2] that is
particularly useful to help figure things out. Being able to step
through code with a UML kernel in CLion with mocked devicetree, efuse
and readl is very useful, though it took a fair bit of effort to work
out how to programmatically create them. For CLion integration I
needed to break out the build part separately[A3], so the debugger can
attach to the linux executable after doing the build.

Some of my test code matches exactly the values from the 3.18 kernel
with its different maths[A7], others are at least within 0.1 degree C
of the expected value so I'm happy that I've got the correct settings
and calibration values.

We'll need to wait for Kunit to get mainlined (cc Brendan) so this is
just an invitation to review and for others with other devices to add
tests for different CPU's thermal sensors[A8] to verify my assumptions
about the 1-1 mapping. Any thoughts on how the other thermal sensors
mtkts [battery, pmic, wmt, dram, igmsensor, etc...] that appear to
perform reboots on critical temperatures should be mainlined?

Is it a first device put in a sanitised version of whatever is
available then second device makes it multi device, or do you have to
start with at least two devices to extract the commonality first time
around? My second device will be the Cosmo Communicator (MT6771) but
we have zero mainline code for that as yet.

I've done what I can with the help from Matthias & Manivannan, so
thanks for the responses. I'm now stuck - it would be really handy to
get the i2c and pmic/wrap working. The change from regmap to pinctrl
seems very confusing to me, for example the pin ball map has only one
pin for SDA0 [A4], yet the pinfunc[A5] has multiple IO's set to SDA0,
eg MT6797_GPIO60__FUNC_SDA0_2 (in total 5 different GPIO's appear to
be able to be SDA0, with different numbers for the other SDAn's etc).
Initially I thought that the idea was that different devices could
have the GPIO60 doing different things depending on how the PCB tracks
are set out, though I'm not convinced that this is the case as there
is only one SDA0 and the old kernel was able to work by the magic of
just the base address 0x11007000 [A4 - 5.9.4 Register Definition]?

Matthias you can of course update the wiki page with WIP for the few
items I'm currently working on (CPU-Thermal, I2C, PMIC-Vibrator,
LED-AW9120). I'd rather get these simplest of devices working first to
prove I/O functions before the much more useful eMMC.

Many thanks for any help,

Adam.

--

[A1] https://github.com/gemian/linux/blob/master/drivers/thermal/mtk_thermal.c
[A2] https://github.com/gemian/linux/blob/master/drivers/thermal/mtk_thermal_test.c
(Thermal test code)
[A3] https://github.com/gemian/linux/blob/master/tools/testing/kunit/kunit.py#L150
(kunit test code pulled from branch - kunit/initial/v5.3/v18)
[A4] https://www.96boards.org/documentation/consumer/mediatekx20/additional-docs/docs/MT6797_Functional_Specification_V1_0.pdf
(2.2.1 Ball Map View)
[A5] https://github.com/gemian/linux/blob/master/include/dt-bindings/pinctrl/mt6797-pinfunc.h
(confusing headers)
[A6] https://github.com/gemian/linux/blob/master/drivers/thermal/mtk_thermal.c#L1028
(reset removed)
[A7] https://github.com/gemian/linux/blob/master/drivers/thermal/mtk_thermal.c#L613
vs https://github.com/gemian/gemini-linux-kernel-3.18/blob/native/drivers/misc/mediatek/thermal/mt6797/src/mtk_tc.c#L553
(raw->temp)
[A8] You'd need to give me some logging after enabling
/proc/driver/thermal/tzcpu_log and the calibration block that gets
dumped at early boot

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
