Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D017DA2C78
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 03:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueGpNNBrG+ONjGj1QCl0inJpZlh5HwUfQBPU4lEu+5U=; b=mPKfVvnVcrrxRY
	PE5OG/j5Du7FE67bWTI9mJUHqhLOfkI+yVIfIUf9CnDA6tIzOsDcT3SvxwGDDceY37r0prTNWOvrJ
	QvsEZ8ZnaxHQyOeC7ldMQeFjvMKOqkE7GXZszQdLWOL2E+QZPXqGe9WFh7V7wZKBYBodQoKjqpPc1
	oOfOLVT9DFbhNck72DSVocCCPAMCp/makwml7Q9jdEV0kjGcDonQXiTog2Ru6MxCV3ddcQTHTHbsp
	LkOpNKtwVA+NwrtKeOBPEZ39fvfR91UcdSJL8r1fYNXS40PZxnBaLRZ9oxu+jseELiJz/EelKjRPo
	fuO9w6oAZrNZ2JM9TBtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Vw4-0004Th-Jb; Fri, 30 Aug 2019 01:42:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Vvy-0004TK-UB
 for linux-mediatek@lists.infradead.org; Fri, 30 Aug 2019 01:42:40 +0000
X-UUID: b9436a70fe404b7f9b221ff832c508d0-20190829
X-UUID: b9436a70fe404b7f9b221ff832c508d0-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 589557954; Thu, 29 Aug 2019 17:42:35 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 18:42:34 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 30 Aug 2019 09:42:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 09:42:32 +0800
Message-ID: <1567129347.30548.4.camel@mtksdaap41>
Subject: Re: Wiki to track changes and progress ?
From: CK Hu <ck.hu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 30 Aug 2019 09:42:27 +0800
In-Reply-To: <e242d481-6a08-4076-2aaf-44b3c4a6afdb@gmail.com>
References: <256e20ee-ce22-2ff8-a2c7-cde75fc681e2@gmail.com>
 <e242d481-6a08-4076-2aaf-44b3c4a6afdb@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_184238_989295_7998365A 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Matthias:

On Thu, 2019-08-29 at 12:41 +0200, Matthias Brugger wrote:
> Hi Mohammad,
> 
> On 25/09/2018 21:36, MOHAMMAD RASIM wrote:
> > Hi,
> > 
> > Is there a wiki for linux-mediatek where I can see the progress of mainlining,
> > what works and what doesn't (status matrix) ?
> > 
> > Something similar to other projects like http://linux-meson.com/doku.php and
> > http://linux-sunxi.org/Linux_mainlining_effort
> > 
> 
> I recently updated the table. It is not complete but at least to some extent
> useful. Especially mt8173 and mt8183 need an update.
> 
> https://mtk.bcnfs.org/doku.php?id=linux_mainline_effort
> 

In that table, MT8167 DRM is WIP (work in progress), I've no idea about
this, could you provide the information about MT8167 DRM? I'm sure that
MT8183 DRM is WIP.

Regards,
CK

> Regards,
> Matthias
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
