Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A056998D29
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 10:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HxgqVGnKk2QY2sBnydtYgGWssWXXikdBtVfrhDl5xE=; b=e5eVCP7vkWtLoB
	Jf+HvD8lDFGXSf08ZLMh4JMNKCNB9DT8Azd3IjBDfkcx09gTpw0TxTPh8tm3gWWwchSLlYWCnYDuR
	hv4YtsoCxx+StGIQXB8IavoNTr2Mb5kS65D+555X8Q1rc6O3oJrHmYQBvUKjCPwXUAqogm957ClCU
	Loz+ll0RBWCw5QuXsooh6a3nc9rVpSqRG51Bja9LJynwl25zFM7pmF6Y9DTjMUhA0yCofzM5UGhQI
	mOwXoEGZAmGWgzc242rRkMcbDbxrNg3zSld4Ym2EzvMtULd/2vdHbMQz201W29uO6caTUm27kTdyS
	GC8eGnjvnQ/zSCUbwThw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iDb-0005h4-SH; Thu, 22 Aug 2019 08:13:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iD4-0005PZ-Mk
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 08:12:45 +0000
X-UUID: a5e96ae201fe487fbf46070a90ac3db6-20190822
X-UUID: a5e96ae201fe487fbf46070a90ac3db6-20190822
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 473063525; Thu, 22 Aug 2019 00:12:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 01:12:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 16:12:15 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 16:12:15 +0800
Message-ID: <1566461540.16302.4.camel@mtksdaap41>
Subject: Re: [PATCH v5 08/13] dt-bindings: pwm: update bindings for MT7628 SoC
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Sam Shih <sam.shih@mediatek.com>
Date: Thu, 22 Aug 2019 16:12:20 +0800
In-Reply-To: <1566457123-20791-9-git-send-email-sam.shih@mediatek.com>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-9-git-send-email-sam.shih@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3BD61D47ACABA7964220A1B0223F5209B3AA948622B67FF3DAA9B078EE5B90732000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011242_863024_ECCFB1D8 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, John
 Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 14:58 +0800, Sam Shih wrote:
> This updates bindings for MT7628 pwm controller.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> index ea95b490a913..93980e3da261 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> @@ -21,6 +21,10 @@ Required properties:
>     See pinctrl/pinctrl-bindings.txt for details of the property values.
>   - num-pwms: the number of PWM channels.
> +
> + Optional properties:
> + - clock-frequency: fix clock frequency, this is only used in MT7628 SoC
> +                    for period calculation. This SoC has no complex clock tree.

I'm sorry if this has been discussed before. 

Would it be simpler if you just provide a fixed-clock as clock in device
tree? This way you don't need this optional properties and don't need to
special handle it in driver code. 

After all, the hw is still connected to a simple clock tree.

Joe.C



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
