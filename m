Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A9A10D39A
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 Nov 2019 11:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gRl8bkVEPwvo6i7wdhXBG2p3D86Tzf8MxJPX5kwEN8=; b=QU0BZUZqsD0V1B
	IeSAQ8Ww7gKF6c+dJ92XTlyJuKJmy0Q1QaK5WjLQ0ioXlegdUhXRvdeD2vL9rTUhahYNJS4Tz2HtA
	luXARRBDGzBGC3zizBM9r8/1jwMc4tVuCO+ygqtBw2quH9xtumuORs/02BjMe8NO3K/OtKHk4f8rM
	/s8kdwMe0Je4+U+WXFBBE6fHzCAoYAH9BFEXCd3rpFCyZcQfMtnZORZa8xOKKh61ImYgZvyE2u2kn
	DJeDkfzUsy9jkwVrkaV1+RiCylyyN6ZZKvvWxbXzEv2++B4DD6H74iVMipDK2fQfodKfXb00QWmqo
	etBs1qItHLde9kRGIwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iad7H-0006WF-Fw; Fri, 29 Nov 2019 10:03:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iad76-0006O5-SJ
 for linux-mediatek@lists.infradead.org; Fri, 29 Nov 2019 10:03:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id a131so9213057wme.5
 for <linux-mediatek@lists.infradead.org>; Fri, 29 Nov 2019 02:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bofh-nu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5UrKqSRJKoGBPMgO2/jdCKMQcuQ7A1Ss66dwsiix9b0=;
 b=jJ1yhaLnNR0CYGklrHbhvyokqlCl72QlSTMfSa4E21afa0fYB8h7HwmCoSh8aVQe6U
 iu5bAl6x2CbffFH/bawfVtQgwanXgHO+iS1Gb+OOA06PXIu/PIpL/HJn6LjoQyAkRO70
 fxLYUtGpmfos2QR3CnLxgKJc59EDfltbblF2X6VKh+1o5HkGi+iyOiEa1L1YEFNfaPVi
 Ni5VDKVwx/4bFy8RwrxZNNrw86cFlsDODmaLZv0yCr5qRZSmRt10SSWPFopZ4auPDcDq
 dY3UsZ//d3BFZG6YSXWhh0M8Id1A0ugvSDqZdrW2smTbAWpG+H1lgDdlT80mzZ4SNjNj
 /cPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5UrKqSRJKoGBPMgO2/jdCKMQcuQ7A1Ss66dwsiix9b0=;
 b=ZZkggpH5KzeXC1hPhXlxunqASYsl394PxYrflwG93lTcWf1d2W0fJcD0HpzFNBiYNs
 ZFd3/dtvR3awkZJKFIqmTa7O+5hsZnW7tAZofyHfCsB1UCrKBS5lKnhOEnVqasxZ7uZ0
 2Yyet+JXfujdMaGGHSaZDNOpy5CbfPaqDGRuFoEiF3FCuGVlJpisYoC0mGkNbTa2eMKr
 VdzxbArs/qcjYH2SGjnyOfF8gjNVRNjgk9C7DRgnFszrx8meF58qj5R+by/+Ddksq6ck
 zvctlQ0Ebt/A7VbMSdEpPp7TK8tu6uez0x5nz2kUNiofjhVwM82HcPRTfJMrIT59TdLm
 0stA==
X-Gm-Message-State: APjAAAV6tAXPUu1X1Dl7eWiu/8UpoG3j4R0JG3VDB86YXZwVzku2R7xr
 1hrl6J+iUd74eH1bWj0gA9NKcQZj2vJXSNl9FK9A1A==
X-Google-Smtp-Source: APXvYqzTAFXNZGcwafQIeJec73W3RgozsYABeK30eaJTije1g+7R6/B3hF2p2eSWHt317C9cAPOBhlSgllb4GK9GIO4=
X-Received: by 2002:a1c:7708:: with SMTP id t8mr13713623wmi.29.1575021776664; 
 Fri, 29 Nov 2019 02:02:56 -0800 (PST)
MIME-Version: 1.0
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
From: Lars Persson <lists@bofh.nu>
Date: Fri, 29 Nov 2019 11:02:45 +0100
Message-ID: <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_020300_943623_B11472C2 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Neal,

On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> wrote:
>
> For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> entropy sources is not accessible from normal world (linux) and
> rather accessible from secure world (ATF/TEE) only. This driver aims
> to provide a generic interface to ATF rng service.
>

I am working on several SoCs that also will need this kind of driver
to get entropy from Arm trusted firmware.
If you intend to make this a generic interface, please clean up the
references to MediaTek and give it a more generic name. For example
"Arm Trusted Firmware random number driver".

It will also be helpful if the SMC call number is configurable.

- Lars

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
