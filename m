Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F41F9A96
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 16:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXSawa2yWQntfUGy8wue9+VMmdccyLXwVYdIUu6tTWA=; b=bvjiCeDRwhOXFW
	YmAKf5DH1MH4lTXbDtix+7SilA+fokC1KkBfjdGW4Giv+mOelj9zuKZNwmqOOUmAW0fIHntGCGhgb
	+AgzAltE2FlzleeVw5QjrR2vOc/yDsQXJUu/3TaW32+kVGEqvxdBMzJsI7MLUR97cuZvDhwTBFivo
	7zpMrtLUupXEcpM7/bXuuzsHQERENqj83qUrIDvCZyCBiq6fT/EvuSx/cnK7gOsYmDmADTuM36PDl
	ZtAXTvebOLyhIenxlb44pzeczcvzeZ0Mic/KWcZgsEZatBQCdPNiqgu+F4si0FgmDvjR/3ZzzIAVS
	TWdxMByaEl75BRL8g4+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqKU-0001A7-Fo; Mon, 15 Jun 2020 14:43:18 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqKF-0000zT-16
 for linux-mediatek@lists.infradead.org; Mon, 15 Jun 2020 14:43:04 +0000
Received: (qmail 18788 invoked by uid 1000); 15 Jun 2020 10:42:57 -0400
Date: Mon, 15 Jun 2020 10:42:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v2] usb: replace hardcode maximum usb string length by
 definition
Message-ID: <20200615144257.GA18707@rowland.harvard.edu>
References: <1591939967-29943-1-git-send-email-macpaul.lin@mediatek.com>
 <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074303_233773_42E35F55 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Jim Lin <jilin@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Siqi Lin <siqilin@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 02:17:35PM +0800, Macpaul Lin wrote:
> Replace hardcode maximum usb string length (126 bytes) by definition
> "MAX_USB_STRING_LEN".
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
> Changes for v2:
>   - Add definition "MAX_USB_STRING_LEN" in ch9.h instead of in usb.h.
>     Thanks for Alan's suggestion.

Acked-by: Alan Stern <stern@rowland.harvard.edu>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
