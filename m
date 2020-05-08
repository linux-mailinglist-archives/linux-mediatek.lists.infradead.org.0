Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0F61CBA48
	for <lists+linux-mediatek@lfdr.de>; Fri,  8 May 2020 23:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fLrbaspoKeImtO4mZBUhZdiGGXcIt/cQBZEAjzp3srE=; b=kFuZ+SSGksVRj0
	V+ibJVxi4sSpkKoJAn3qGjb0H9WZx3FWTTbNPdM52PFiEsnIL5uB3cHUC47Bvx6tKx4bcIVcHZzJ3
	66sEUTMIW22kuIWW0kvCYyMmAtkBMEi7467yAbAkW62dZqy6XyMAZV+urYXp7bXkpzkGcXa5ZyEOk
	PtsnUvi0PlmcSQ+bTJLkbfoQun9l4YPFwhNIMDAb9q3VbQOzSACiNxdUU66j5KiqWMxdmAzvSuMwk
	tnSLTXfaiQCXsuce5HGpwEt1kbc0ldS71kVlEZsQRY4a8PHfw3RUTrKkbL53b0ax6qgfPtlNPnsMM
	hmDQXWhLfa5jyt4joRNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXB0A-0002Vo-Ai; Fri, 08 May 2020 21:57:50 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXB07-0002Ug-GS
 for linux-mediatek@lists.infradead.org; Fri, 08 May 2020 21:57:49 +0000
X-IronPort-AV: E=Sophos;i="5.73,369,1583190000"; d="scan'208";a="448862514"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2020 23:57:17 +0200
Date: Fri, 8 May 2020 23:57:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: sean.wang@mediatek.com, vkoul@kernel.org, matthias.bgg@gmail.com
Subject: question about drivers/dma/mediatek/mtk-cqdma.c
Message-ID: <alpine.DEB.2.21.2005082352340.6525@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_145747_821460_51626020 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.134.164.83 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: dmaengine@vger.kernel.org, Nic Volanschi <eugene.volanschi@inria.fr>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

The function mtk_cqdma_find_active_desc contains the following code:

        struct virt_dma_desc *vd;
        unsigned long flags;

        spin_lock_irqsave(&cvc->pc->lock, flags);
        list_for_each_entry(vd, &cvc->pc->queue, node)
                if (vd->tx.cookie == cookie) {
                        spin_unlock_irqrestore(&cvc->pc->lock, flags);
                        return vd;
                }

That is, from a &cvc->pc->queue there is an iteration over elements of
type virt_dma_desc.  But other uses of &cvc->pc->queue, such as in
mtk_cqdma_is_vchan_active, seem to indicate that the elements of this list
have type mtk_cqdma_vdesc.  It is not clear to me how the body of the loop
should be updated to account for this.

thanks,
julia

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
