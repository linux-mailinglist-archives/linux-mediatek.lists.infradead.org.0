Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ED337B9B
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 19:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLMlPfgq6R0zWbcJRHj/ZKqGexOhZ4uc4rNhTdLmmM0=; b=UmGge7iYnTU3fB
	6ARwW7JQfPNzkvINIpSf2nzKDhz3nv9Dwb3yMlK2134bWCbHSdWwJPii1m/vcnQJJik2z+WMAy0Wl
	ztuhkkQGBKCe/rWiTttkuhcBUBaCbLagKYnN7GoQdy5//UduiuktUwBoncQ7YenJCm7YwuDb7tgf1
	KjKH1dxGgjIGi1W0YkD455EdzgvDfI+Jizbf0u5p1IjLPVkHAiRUP/7+SPpv8x6NubNXWa/x4ZoET
	bncJnWtjKAZq9S1qfvezTphcP/fh7tgVYUzD0OHD7oCQMTzvOG64YiX0bml/TejsnwygAUaetxtYL
	clnrEIkVNJ43FVytaerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwbl-0004n7-Il; Thu, 06 Jun 2019 17:55:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwbd-0004gY-2O; Thu, 06 Jun 2019 17:55:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5AB22083E;
 Thu,  6 Jun 2019 17:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559843716;
 bh=UIIZUNstg8kbM37txNcDzUQLjNklk5K0SFR0hwXSG1U=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=VfXKqQhMGKAY5/W6lEfL1Nf44ezQkWcS2B6eelQK/HNZ6PZ4TvtIk9WCGScyX260Y
 qZ+PA/xXhPvjuOS9LbJZQb9TYd8SGjL0saRxgq9mgb53XXlyN026gnIfXTSMGxFDhX
 jeoeL1A+PLf3AVO5m+sx3zN30bmGVf0mH+cQFA/w=
MIME-Version: 1.0
In-Reply-To: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
References: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
To: , Philippe Mazenauer <philippe.mazenauer@outlook.de>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: Remove unused variable
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 10:55:15 -0700
Message-Id: <20190606175516.A5AB22083E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_105517_126510_0E635DE0 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

UXVvdGluZyBQaGlsaXBwZSBNYXplbmF1ZXIgKDIwMTktMDUtMjEgMDU6MTY6MTQpCj4gVmFyaWFi
bGUgJ2RkcnBoeWNmZ19wYXJlbnRzJyBpcyBkZWZpbmVkIHN0YXRpYyBhbmQgaW5pdGlhbGl6ZWQs
IGJ1dCBub3QKPiB1c2VkIGluIHRoZSBmaWxlLgo+IAo+IC4uL2RyaXZlcnMvY2xrL21lZGlhdGVr
L2Nsay1tdDg1MTYuYzoyMzQ6Mjc6IHdhcm5pbmc6IOKAmGRkcnBoeWNmZ19wYXJlbnRz4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBj
b25zdCBjaGFyICogY29uc3QgZGRycGh5Y2ZnX3BhcmVudHNbXSBfX2luaXRjb25zdCA9IHsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFBoaWxpcHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVyQG91dGxvb2suZGU+
Cj4gLS0tCgpBcHBsaWVkIHRvIGNsay1uZXh0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1l
ZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
