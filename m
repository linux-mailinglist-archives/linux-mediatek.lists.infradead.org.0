Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B50B504A
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 16:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/WUVJ+Fh866tNFsGAqIYib8tnJRILZx96+OqMmDzZw=; b=HuFyHWSRD2Criq
	Vh7vxWVc3iR/jxItCdsx8lFhWL++QBJdaxYmFetcsPsbCIevdflSp7nFeczq6EYWum7oSFCZqRgD7
	mhl/Y9JMqwDSoolDZPh90hSu3IiKXdqvGxhklwJgBFFvJmuHmxCFLglbT8vTk3u8+sg9dl8cmsMei
	JOhMKPJGvcJE/9nB7nCck2OkI9Vy4nYc1oaTcIFf5GaKyU0MilLfCLTd2cXLJePa2nx376jxKDJ2e
	5AO8NmzeCDBNajBSk2Yl8QXQYz/NeJnjxYxF0b62eB04ZtoeawSEDF98hom3+Sv2uRx8Sqp/PuD9C
	dC2onZghOH+pxCAtewyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEOQ-0000Th-UH; Tue, 17 Sep 2019 14:23:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEON-0000Su-5l
 for linux-mediatek@lists.infradead.org; Tue, 17 Sep 2019 14:23:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id r195so3436314wme.2
 for <linux-mediatek@lists.infradead.org>; Tue, 17 Sep 2019 07:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ARJpJT0nKFm6v9TsSUReVaQpV9GqbuYJs4Na06BHXe4=;
 b=j8cqKgVCNOQhomWb1EI7zEd0oJB8t8o1v0xL8F81uBkg6Jwu9Lz08gdURrEfEJ29C2
 +Rwj0P0xbJR9WklEDt6NCGgxERMcf/B6fW1Dl2xZGzmfEKlLReE6lUX5vzpomcBzvQsg
 URcbUaxQVAYsbyBs2P9KM0GJ8kiaelK3Ad9z7uI/wuYCkoiIrp4XgQy47pdFrr+Sbbx2
 LLHgPrVdECnzMwgxkz3OjZcy/V8FIVV/inKGdTeDMdC0uKQQPi7AgcT92zfSFu+qJ71H
 Q4eDbo9KF7drTXiuwcSvqAcadHIhZRQ6sGZDcLxcnNBc/Cvf//HAQ9zxzcrQ7rBFJvpo
 Rbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ARJpJT0nKFm6v9TsSUReVaQpV9GqbuYJs4Na06BHXe4=;
 b=q4O683gkQ4iyFNeDQISCk83wheHv78/98nX7i4qvsE7xRRIZikK/MCQdFVbrY0uLPv
 Crq4Dmt9sDHBxv/AB0bLicPrxCUQOaiq/ya87Z1pd+ZNE63TsyZcv8NNY9dvOxHBAwEC
 VnAIBoPXNtPfsNGkxN6HQtFHqAe1yEvBcd0K9vFKySJkDuNxuTATBhjR0hKRq0+eSSql
 cfZ62jUOnvswkj8nSkhxy62jp/dtdb41Y9Ex+6MM0dpKI3BTBumbsF+YgXwwclG16NxV
 Wrl95wKo6SfE11Q4icdbRjwwgOhmNgLJz/j+hWjVxSbp/a6fj0K0W0uCO/7tU6N2BmSK
 hCbA==
X-Gm-Message-State: APjAAAWPkgA0PAXcFzaJATAFhP6eoDCgXbwcoroKogOBTtuljMx+sxY8
 ftZFyvy+a3uNwYDJ5eNo/xzWZ+vXhEuGBQ==
X-Google-Smtp-Source: APXvYqz+T0fMQc12PMl2CRptoYhiwdaJyFOyWZ59bnX92B4Z8DJOQIyrG0XFZlD7pgKPPVksIHxoKQ==
X-Received: by 2002:a1c:9ec9:: with SMTP id h192mr3953854wme.105.1568730221055; 
 Tue, 17 Sep 2019 07:23:41 -0700 (PDT)
Received: from ziggy.stardust ([193.86.95.52])
 by smtp.gmail.com with ESMTPSA id f18sm2630867wrv.38.2019.09.17.07.23.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 07:23:40 -0700 (PDT)
Subject: Re: Mainline kernel for Gemini PDA (MT6797*)
From: Matthias Brugger <matthias.bgg@gmail.com>
To: Adam Boardman <adamboardman@gmail.com>,
 linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>
References: <CABvHX8jSL=UrZ8iVXPOmHEMOm7fkNCim3P0hepOcQB=hP2pGyA@mail.gmail.com>
 <d127a5d6-6525-d638-7090-765bcd4dd592@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <548a6e1a-b3df-1aa4-3d56-4695b29881f3@gmail.com>
Date: Tue, 17 Sep 2019 16:23:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d127a5d6-6525-d638-7090-765bcd4dd592@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_072343_245959_27D8E662 
X-CRM114-Status: GOOD (  37.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
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
Cc: Fran Quinto <fran.quinto@gmail.com>, Mars Cheng <mars.cheng@mediatek.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 17/09/2019 16:08, Matthias Brugger wrote:
> 
> 
> On 16/09/2019 21:35, Adam Boardman wrote:
>> I'm new to kernel work and I've started working on trying to get a
>> mainline kernel build working for the Gemini PDA (X25/X27 - MT6797*).
>>
>> I've pulled in a recent mainline[1] and then added Jasper's fixes[2]
>> and Jimmy-Yj's[3], then tried turning on Manivannan's[4] pinctrl
> 
> Jaspers clock fixes are upstream, same for the pinctrl. We are missing the
> SCPSYS part. Seems it fall through my cracks. If you want then just rebase and
> resend it with your Signed-off-by and I can review them.
> 
>> driver and adding a couple of simple device drivers (vibrator & led
>> controller). Neither work as not enough other things are ported or
>> things on the mainline have changed in incompatible ways.
>>
>> The mt6397_probe (for MT6351) fails at the dev_get_regmap stage. Which
>> looks to be related to the mt6797 picking Paris (pinctrl v2) for this
>> device which has none of the regmap code that only features in Moore?
>>
> 
> Adding Sean as he is pretty much into the pinctrl implementation of MediaTek.
> 
>> The current state is that I can boot to a BusyBox shell over a
>> USB-UART cable[5], mount the debugfs etc. Best not to stay there too
> 
> Nice, didn't know the USB-UART cable works.
> 
>> long as the chip soon overheats, 20-30 mins is enough such that after
>> a reboot to a working 3.18 kernel it will only mount the file system
>> read-only due to thermal overload, give it a few mins to cool, another
>> reboot and its all good again.
>>
>> For the over heating I suspect the fact that Jasper commented out the
>> cpu-idle-states could be related, though there are so many parts to
>> these cpus I wouldn't be certain. Putting the idle states back results
>> in a booting kernel to the point that the initramfs calls 'udevadm
>> settle' and freezes there or in the subsequent call to the busybox
>> shell.
>>
> 
> Did you try the plain upstream versions? Any of the two [1] [2] should bring you
> to pretty much the same point, serial console with a busybox initramfs.
> I personally don't have the Gemini PDA but the 96 board [3], but I didn't
> experienced any over-heating.
> 
>> I might need to investigate extra devices which I see no mention of so
>> far in the gemini pda dts[6]. So any advice on the right order or any
>> examples for other similar devices would be great. Also how to
>> test/verify each one is working correctly? I'm not requesting the full
>> list ordered, just the top 5-10 items that'll get me to a stable state
>> where the device can live without likelihood of damage. I can than
>> pick off the others as I choose, quite a lot are obvious from the
>> names. The power management+thermal side strikes me as a good first
>> focus?

Somehow related. I started to create a list of all MediaTek SoCs to identify
what is supported upstream and what is not (and which components maybe won't be
even available). You can have a look here:
https://mtk.bcnfs.org/doku.php?id=linux_mainline_effort

Feel free to send me any updates on mt6797 if you like.

Regards,
Matthias

> 
> As a good first focus I'd try to get the MMC driver working. I started on this
> some time ago but got side tracked. From what I saw, you need to implement
> pmic_wrapper and pmic as you will need some regulator for the MMC.
> I had a quick look on the pmic/pmic_wrapper in the repo you mentioned. Maybe
> Mars (in CC) can help with his knowledge to understand if we can re-use an
> already implemented pmic/pmic_wrapper or if we have to enhance them/write new
> drivers.
> 
>>
>> Whats the mainline status for battery and charge support, the 3.18 kernel has:
>> MTK_SMART_BATTERY, MTK_HAFG_20 and MTK_PUMP_EXPRESS_PLUS_SUPPORT
>> Anyone working on their equivalent?
> 
> Not that I'm aware of.
> 
>>
>> For the i2c busses to have a chance to work I would also need to
>> define: mtk_i2c_compatible mt6797_compat in
>> drivers/i2c/busses/i2c-mt65xx.c but I've no idea how to extract the
>> needed values from the 3.18 source as the code is too different to
>> easily know what to look for. Indications from pinctrl-mt8183.txt
> 
> Yes, the downstream mt6797 kernel code is heavily modified and it's difficult to
> understand what's the exact difference.
> 
>> suggest that I might also need to add i2c0_pins_a style references to
>> pio: pinctrl but the 8183 device appears to have no i2c just spi, and
>> then pinctrl-mt6797.txt has no mention of i2c, is that the case? again
>> I'll need a pointer in the direction of figuring out the values.
> 
> I think the datasheets [4] should tell you which PINs have i2c functionality.
> You could try to use the schematics of the reference board [5] maybe you are
> luky and they haven't swapped the pins.
> 
>>
>> I have only publicly available data sheets so far[7], and the original
>> kernel[8].
>>
>> I've left in Jaspers cmdline force to limit it to one cpu, I don't
>> know if this is necessary, usually this is overridden by lk to limit
>> it to 5. Also of possible interest I've put in Jaspers mt6797 debugfs
>> and whilst some bits of it now work I've no great notion of how to
>> make use of it.
> 
> I don't think this is necessary. AFAIR I can boot without limiting the CPUs.
> 
>>
>> Any help greatly appreciated,
>>
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
>> Adam.
>>
>> PS: The Cosmo Communicator has the P70 so this will all need doing
>> again for the MT6771, anyone started on that?
>>
>> --
>>
>> [1] - https://github.com/gemian/linux (working branch)
>> [2] - https://github.com/Jasu/gemini-pda-buildroot (2/3 patches mainlined)
>> [3] - https://patchwork.kernel.org/patch/9889457/ (and related)
>> [4] - https://patchwork.kernel.org/patch/10672803/ (already in mainline)
>> [5] - https://www.omegamoon.com/blog/index.php?entry=entry180626-210224
>> [6] - Long list of items from 3.18 dts as yet unknown to mainline -
>> power_gs, toprgu, sleep, mcucfg, rt5735, pericfg, dramc, gpio, apxgpt,
>> rsvd, hacc, fhctl, devapc, ddrphy, bat_meter, topmisc, mdcldma,
>> aes_top, mcumixed, mcufhctl, c2kmisc, modem_temp, scpdvfs, emi,
>> sys_cirq, m4u, efusec, gce, cqdma, mipi, gic/gic1, pwm, spi,
>> therm_ctrl, eem_fsm, btif, dvfsp, itrx, audiosys, usb, xhci, mjcsys,
>> mfgsys, mali, dispsys, mdp, disp, smi, dip, dpe, consys, wifi, camsys,
>> vcorefs, pmic_clock_buffer_ctrl, ext_buck, chr, fusb301a, sii9022,
>> sm100, accdet, swtp, battery, gps, gsensor, humidity, gyro, hall,
>> switch, fpc1145, als, gpio_usage_mapping, cap_touch, solomon_touch,
>> aeon_gpio
>> [7] - https://github.com/gemian/gemian/wiki/HardwareHacking
>> [8] - https://github.com/gemian/gemini-linux-kernel-3.18
>>
>> _______________________________________________
>> Linux-mediatek mailing list
>> Linux-mediatek@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-mediatek
>>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
