Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B510972534
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 05:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdutWcCJYuFECce9p1Mb5gaV7U7E9dbnooQnVlBhLkI=; b=oq6iDeJU+CNF0H
	+AUDxHyBC42fOSaeTnpdqAxwngLZ5GZos02iRDN36ey/wnmhKQjGY5F5ISCc0llldEvvS/nU58BHp
	2HMTRosuDUXgb7HnPa+XDJ+Q7fMIc9sOUm6N6MTSxwxJmefS6m7BCrx7PE7uoCcB6GVMMEWtlWT2U
	bPHIl3x8ODjWhRKtgTjoR/aav2pBOg8jeqGAJEkyJGSY0h65q5GgALwqbGXOtEUJKQWOHEIdwndB1
	Tc94ocwnmPPz6Z/P+IEovZMBEfKiTiU7giTy3Zb2eQz5JM1HJblhofrCXDExNDWRqwdgkBFBI50HI
	UMkODTe3iaKKmczHBnNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7l3-0006iM-MR; Wed, 24 Jul 2019 03:16:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7l0-0006hb-19
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 03:15:59 +0000
X-UUID: 0aa623dd862e437aa263b0adce8c4042-20190723
X-UUID: 0aa623dd862e437aa263b0adce8c4042-20190723
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2076666705; Tue, 23 Jul 2019 19:15:49 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 20:15:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 11:15:46 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 24 Jul 2019 11:15:46 +0800
Message-ID: <1563938146.8010.4.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: switch to SPDX tag instead of verbose boilerplate
 text
From: Ryder Lee <ryder.lee@mediatek.com>
To: Roy Luo <royluo@google.com>
Date: Wed, 24 Jul 2019 11:15:46 +0800
In-Reply-To: <CA+zupgyq9VZkstdOOX4E_G9KWVN2WB+u0XnLiFAbxGws6Mt4qA@mail.gmail.com>
References: <6f6d5cf551a0b0d0dd1b902aca2c5417b7f98da7.1563864007.git.ryder.lee@mediatek.com>
 <CA+zupgyq9VZkstdOOX4E_G9KWVN2WB+u0XnLiFAbxGws6Mt4qA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_201558_076676_16B9A712 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-24 at 11:03 +0800, Roy Luo wrote:
> Hi Ryder,
> 
> Please follow the convention, some of your header files use //.
> 
> C source: // SPDX-License-Identifier: <SPDX License Expression>
> C header: /* SPDX-License-Identifier: <SPDX License Expression> */
> 
> Regards,
> Cheng-Hao (Roy) Luo

I also found that - copy paste mistake.

And I will fold this one into 'fix many checkpatch.pl warnings' series
then send v1.

Ryder

> On Tue, Jul 23, 2019 at 2:45 PM Ryder Lee <ryder.lee@mediatek.com> wrote:
> >
> > Add SPDX identifiers to all remaining files in mt76/
> >
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
