Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81EA163D
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 12:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7cCaz+OT0RsCRlJC/vtm3bTxYsIDm8xQgLKz/Wtm1Q=; b=UTpjdqKJJ7atVSqMdWUV1B4of
	fjL+HWGJF0spnpE5efhdaOaGUGNJapyWfEjUYNhXzH2ENyrLpeQrtBsdXkqrBukKiqqgc45svln6c
	pSuYDrjmnVHpTYVFJP/lvCrqQe6yswmmXMyYqUwRWdxIcfPZ/0vrkUaaX4lB+y0LgBu0w2OUrhopt
	ONdztIo3LEvLMFqP5NRR1xJiSFou8M5S9zE2gscEuI7IqzkTUwCO5lFbGmLU1BwB2bilNbFtODusX
	OAnZu/BGJaFpFUXh0r795n2L42ELnug8969Qx1I6+CIwFThtBlngTGa+dzLSlZn3IqOP09GAlQWWI
	Otz0cpW6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HlH-0002A9-7N; Thu, 29 Aug 2019 10:34:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HkD-0001hG-Tj; Thu, 29 Aug 2019 10:33:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 03:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="180839636"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.170])
 ([10.237.72.170])
 by fmsmga008.fm.intel.com with ESMTP; 29 Aug 2019 03:33:26 -0700
Subject: Re: [PATCH v2 4/7] usb: mtk-xhci: support ip-sleep wakeup for MT8183
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>
References: <1566977671-22191-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566977671-22191-5-git-send-email-chunfeng.yun@mediatek.com>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
Message-ID: <cc00a930-424f-d511-4616-f0409cbca1ac@linux.intel.com>
Date: Thu, 29 Aug 2019 13:35:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566977671-22191-5-git-send-email-chunfeng.yun@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_033333_973150_E98C6C27 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 28.8.2019 10.34, Chunfeng Yun wrote:
> Support USB wakeup by ip-sleep mode for MT8183, it's similar to
> MT8173
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Acked-by: Mathias Nyman <mathias.nyman@linux.intel.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
