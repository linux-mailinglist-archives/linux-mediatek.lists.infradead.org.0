Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA14429219
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 09:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaY/hrwuJanw7dgw6eNMP3wJ6OZicC1huNrR/fBBDk0=; b=qfj/t5Qnbd3iQm
	fATjCG2GXpuPBW+waVfdH0IjnT5RnSVZclxetg20YcfXP4iDZqP+hM0QYWqvZBPd/LYVoAIPbJUcA
	1K7wYNE++WNk/BvQ+PkaHBrQMC02kTZR2jc0I61oJ+mJj7B7AZMBQ0+jCONUtgZSMWiab1t8iEeio
	UxLBY12Ixrkn46YSCSjVIynyDWrdvElcQ+uRwZiaRU648ozBicoe9fgj8oSM37rvx+Eb8duaPtvma
	k91uvF+4mhan5v94hpz2Z4BGAy9SSrupw32sAYiXc7B2yL6z2+MqutYMi/3gs+7C7TishsHdcjWsr
	ZrZtD2Io1Kh5pAf+nZ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU52o-0001iS-LE; Fri, 24 May 2019 07:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU52l-0001hv-Hj
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 07:55:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5FFF20879;
 Fri, 24 May 2019 07:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558684511;
 bh=erVr97GltBdW+TY/NQm3CwstjOX12OJL5JWbo8L3z/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ooze/Bz3O1ArZ5k1Nc3dNnwR9RhM3sbE5nT/GAoApphuLee3CF6EH2a6pzps8j965
 2EKg64aoGaL94YD+f/Ok4Vf00YRtiX3cXOYST+mnUSLAG8QlqIiNGigJ/HMrWgu2oT
 ZwP32BVgt/yKx7kp1pmyajJ+mOsTkT7ILYvIqdkM=
Date: Fri, 24 May 2019 09:55:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Claire Chang <tientzu@chromium.org>
Subject: Re: [PATCH 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
Message-ID: <20190524075508.GA31438@kroah.com>
References: <20190521084701.100179-1-tientzu@chromium.org>
 <20190521084701.100179-2-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521084701.100179-2-tientzu@chromium.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_005511_605409_DC5153BC 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 04:47:00PM +0800, Claire Chang wrote:
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> ---

I can not take patches without any changelog text at all.  Part of
writing a good patch is actually describing why you are making a change.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
