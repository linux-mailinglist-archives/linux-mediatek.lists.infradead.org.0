Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BA12E5E5
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Jan 2020 12:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZrJN8HD0ioBAzC/AgmKvryAEtufFZBy6yVRS3pYTxo=; b=XjFQ9fyEnKmceB
	Gvz0Pp0zjSsUPi8Rdybct9Agqylxya7ZP535LmM5IOmDD+YqBA6Tt/yT+Af5jUmKikMuq7lSqt8Dr
	kKxufxX2tNEXOaeQU3V2NQpSgWr2D+p0Mqcsu3za0QD0GIC4wU1iV6pDGdKdxDCFfWXdCzKOoBGuZ
	UdHuDQX900mzwrk8R6c4HoHhhTfFJV2qVGEbCt3CMI9GZpAceCrfrbF/w0bM8FM/h0o/Rn/YCywgj
	xbTtH+k4YfnsJYXyu25XzQ5W2Y32ojD5tnBKbuFglK3UgsrFWckNnvaB0GBq3lrZyZyY3YkHtJlvQ
	or9xkMKYy+MaXkVjLMCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imz5t-0007pl-UZ; Thu, 02 Jan 2020 11:56:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imz5o-0007jZ-B2
 for linux-mediatek@lists.infradead.org; Thu, 02 Jan 2020 11:56:45 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1imz5Z-0002We-MF; Thu, 02 Jan 2020 12:56:29 +0100
Message-ID: <f3a5ccdc211b5d94b1901e72cfc2ef57d4107054.camel@pengutronix.de>
Subject: Re: [PATCH v7 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, yong.liang@mediatek.com, 
 wim@linux-watchdog.org, linux@roeck-us.net, matthias.bgg@gmail.com, 
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, chang-an.chen@mediatek.com,
 freddy.hsin@mediatek.com
Date: Thu, 02 Jan 2020 12:56:27 +0100
In-Reply-To: <1577437494-738-2-git-send-email-jiaxin.yu@mediatek.com>
References: <1577437494-738-1-git-send-email-jiaxin.yu@mediatek.com>
 <1577437494-738-2-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_035644_377364_1D3E37F8 
X-CRM114-Status: UNSURE (   4.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-12-27 at 17:04 +0800, Jiaxin Yu wrote:
> Add #reset-cells property and update example
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

to be merged together with patch 2.

regards
Philipp


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
