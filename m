Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCCF1ED509
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jun 2020 19:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VFITHP1X/yd+YNLK25HyWYocF6NbpiYHaV93eiKJ17U=; b=RFEH1LzJHn2ONqrBPKXyBZ8Wu
	IMlskc3ahYXAYAaQ7fD/YLRxRid0v+beKH/yw9F5RrLsAHwl/x5RYoY+vdJRGzcnTt5LdRKAnh7L+
	MeaDPnu+6sCe3+Rk0SbhkwI7siPxBfBwDSc6CUDVofqvqRNVBZFfn88/64Wv1V0mY77OxacLiJNBT
	TigabFtz4d9jmeiVyXcG8fTry03y2dSwZJ0lq7euC1+L/YibwUhJm1Cm8GzUyQoXVeJnpWaMEHeJU
	LAGn2xshpVfr3aaZZZYryDT/7DJkYbOq/P5MMMAh6+6bOZsIqtKSLfqHMhJnx39CVvlr7kAJ/+if6
	8zQLWNkPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXGm-0005ZH-ME; Wed, 03 Jun 2020 17:33:40 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXGe-0005RU-21
 for linux-mediatek@lists.infradead.org; Wed, 03 Jun 2020 17:33:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id c21so1846681lfb.3
 for <linux-mediatek@lists.infradead.org>; Wed, 03 Jun 2020 10:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RiYI0t+KrBvaJgMcqUi2332VvHKyX88P2wlQysjVLXM=;
 b=gk244yjdaq9AeMPc0x74cYRwy2EEkQH/A2o2vAvYivtoPifzXZ4zIPTJxNnt6AEms3
 lnpu4id+cI4xfoV50YJ3gBY/KHwO5czVFEAW3yZvg2XLVI0C+9X1+Ckei58TxH5yrgfU
 PF13oW+pEFgFc9YI47rXwqVQRStTEWiZL8fC7FVTh8rSr0KJdluA2FI89xLVmbfQ+NEW
 wlgPHeXOEVwRUcFUMyqo37mmdKmoeKXeGMAoiKXHwA/4WYa5strDvITPRW9Rem2vUDvL
 zNBIpLEJlrIhR0I1My/Ub2bW9Sw0qyMOt/HBDths765G9kyJoGaQBb+35SazRc8zZLjg
 m+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RiYI0t+KrBvaJgMcqUi2332VvHKyX88P2wlQysjVLXM=;
 b=O+2nxyrHhzFwKrp691FI0KxYf2VpwQBEveGj680U03PKEVnPLmcqgNT3tYtQUWkzlS
 bb8NJN8xWQkjzDFlSYpMs6yj6eRrZ6Vu12sK+b0a7DeRC+4ADZs8NfAZyPa28S+VhH2t
 Kbo/OIG/ehXQE6ch9RzaI4yyUOvOh4VkcuZkiEBMjumh6bRofclSuVtSYQfPb3NaDBKG
 mIRH0dVQWlec6T/u5Z1GgQCIlyv8ufwCFbkk8OGJ5N0081Vzw1xfxeq/da2CaPSBLHxK
 lKfCCEI2bmUfjJYelfVE8zp6voWEOxuqBc0n1KGfLWq0Mrl+CQ4DUtgdAEQoyob8Ywoz
 oQ9A==
X-Gm-Message-State: AOAM531ZXeQUJBvIPZipO/7S3cJB6d5QcYlKs14nYh2QfuOG0sEP5+bs
 mQ47AQV0KBh32NwSP/HOnBe5j14Hxww=
X-Google-Smtp-Source: ABdhPJxlDbpPhvBO2HwzpUWB+mZRWd3ea7bAmLgctD4jOZItUkkhqH0olCiHDFJagt7e80KPbSXkjA==
X-Received: by 2002:ac2:489a:: with SMTP id x26mr297287lfc.111.1591205609563; 
 Wed, 03 Jun 2020 10:33:29 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:448d:774a:2057:6699:2c75:847d?
 ([2a00:1fa0:448d:774a:2057:6699:2c75:847d])
 by smtp.gmail.com with ESMTPSA id q8sm815921lfo.13.2020.06.03.10.33.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 10:33:28 -0700 (PDT)
Subject: Re: [PATCH v3] usb: host: xhci-mtk: avoid runtime suspend when
 removing hcd
To: Macpaul Lin <macpaul.lin@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, stable@vger.kernel.org
References: <ebd32a2b-c4ba-8891-b13e-f6c641a94276@linux.intel.com>
 <1591189767-21988-1-git-send-email-macpaul.lin@mediatek.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <b2f3aa9f-a592-0e8c-f897-f5d885fb9740@cogentembedded.com>
Date: Wed, 3 Jun 2020 20:33:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <1591189767-21988-1-git-send-email-macpaul.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_103332_304747_90E0CF1E 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello.

On 03.06.2020 16:09, Macpaul Lin wrote:

> When runtime suspend was enabled, runtime suspend might happened

    Happen.

> when xhci is removing hcd. This might cause kernel panic when hcd
> has been freed but runtime pm suspend related handle need to
> reference it.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
[...]

MBR, Sergei

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
