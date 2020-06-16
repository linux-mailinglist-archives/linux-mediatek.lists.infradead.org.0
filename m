Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C546C1FB424
	for <lists+linux-mediatek@lfdr.de>; Tue, 16 Jun 2020 16:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akN/JWhRAB45KF2bcUMONu1xQ3rjFhli4saZDRFD0PE=; b=J/yROUHWs2J1Ed
	zRLed5bp1nkDwQedgwk0Ml4qQrD0eWCEpM2tjkEVHNp70cDmrcQGigXaoZj/tqgpMGxI5QP4vnrai
	SR0REUYTIO1S8IpwyOXr7zMgEw//SWgdGZULGfDPxvuQCWOcmyKV0+sZAf9R9dYUD4AZTnat6ihy7
	VgDoFMIlRSgfqE72Pkj2Fp3g7A8U0BdFIRao1eur30zBE1mXiOuH0oXsQD3RaRjfAv3eij+DCtE5j
	76nk8NRaoxHsY4HYIBYhGSNmY8Ia+w4Sm2jXRa5MUhKXoZXIVI1x+Rj1BNW410Zq6vxENGXv7QWCb
	bdudJp1LTOZQonoG5HEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCUN-0004AC-Cm; Tue, 16 Jun 2020 14:22:59 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCAr-0003zQ-Ti
 for linux-mediatek@lists.infradead.org; Tue, 16 Jun 2020 14:02:52 +0000
Received: (qmail 31737 invoked by uid 1000); 16 Jun 2020 10:02:46 -0400
Date: Tue, 16 Jun 2020 10:02:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 1/2] usb: gadget: introduce flag for large request
Message-ID: <20200616140246.GA30975@rowland.harvard.edu>
References: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070250_127581_643DECB3 
X-CRM114-Status: UNSURE (   4.87  )
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
 linux-kernel@vger.kernel.org,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sergey Organov <sorganov@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@gmail.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:34:43PM +0800, Macpaul Lin wrote:
> Some USB hardware like DMA engine can help to process (split) the data
> of each URB request into small packets. For example, the max packet size
> of high speed is 512 bytes. These kinds of hardware can help to split
> the continue Tx/Rx data requests into packets just at the max packet
> size during transmission. Hence upper layer software can reduce some
> effort for queueing many requests back and forth for larger data.
> 
> Here we introduce "can_exceed_maxp" flag in gadget when these kinds of
> hardware is ready to support these operations.

This isn't needed.  All UDC drivers must be able to support requests that 
are larger than the maxpacket size.

Alan Stern

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
