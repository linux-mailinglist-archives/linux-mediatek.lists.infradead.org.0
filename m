Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390C1C33A
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 08:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFK66hFXMPInL7QPXReo2nHZg1s0RSjWS9m0rWL3r+c=; b=e1FVUl7pD8ca3v
	PGmo/69C48znpkzRGxfYWlFP98cT8jZi75cH5MtmWnG/+WNCUj+0AmfGBcrmA/vDpYmX/u0gKkcnh
	Iir8bpdXe5tKhKVbkdVaecYsgcczf6lYj2clAJMkFginBynlav9zsgHID9nGrPIdTQDom8C1+9kjE
	UCT7WO/u7cJBKbJHNGKDoqHt7i5m8N5tU3PAfwbDS/QdU925KaunFCBMZ8HMRLoCGL0NepPMRw7uL
	YoM9OqVi9hBly3lVW7v8jlD4dT29IjaDASmgj5Zm8td8/6DlLas6MsW6AIPO4gf21L6DWJonc1EtS
	5Fd9ZgpOqejxPl944Gvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQsR-0007oH-8w; Tue, 14 May 2019 06:25:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQsH-0007gg-Pl; Tue, 14 May 2019 06:25:19 +0000
X-UUID: b2743fa7f40c4a73bc47338777f79f1b-20190513
X-UUID: b2743fa7f40c4a73bc47338777f79f1b-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1248924353; Mon, 13 May 2019 22:25:04 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:25:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:25:01 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 14:25:01 +0800
Message-ID: <1557815101.24427.7.camel@mtkswgap22>
Subject: Re: [PATCH v1 0/3] scsi: ufs: add error handlings of auto-hibern8
From: Stanley Chu <stanley.chu@mediatek.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Date: Tue, 14 May 2019 14:25:01 +0800
In-Reply-To: <55818bc4-d464-bb35-25bb-9ef87af8224e@free.fr>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <55818bc4-d464-bb35-25bb-9ef87af8224e@free.fr>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_232517_841092_95DEC378 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 vivek.gautam@codeaurora.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, subhashj@codeaurora.org, evgreen@chromium.org,
 avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 sayalil@codeaurora.org, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Marc,

Thank you so much for below suggestions. I will fix them all in next
version.

On Mon, 2019-05-13 at 16:51 +0200, Marc Gonzalez wrote:
> On 13/05/2019 16:36, Stanley Chu wrote:
> 
> > Currently auto-hibern8 is activated if host supports
> > auto-hibern8 capability. However no error handlings are existed thus
> > this feature is kind of risky.
> 
> This last sentence is not very idiomatic.
> 
> I would suggest:
> "However, error-handling is not implemented, which makes the feature
> somewhat risky."
> 
> > If "Hibernate Enter" or "Hibernate Exit" fail happens
> 
> I would suggest:
> If either "Hibernate Enter" or "Hibernate Exit" fail during ...
> 
> > during auto-hibern8 flow, the corresponding interrupt
> > "UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
> > according to UFS specification.
> > 
> > This patch adds auto-hibern8 error handlings:
> 
> error-handling
> 
> > - Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
> >   auto-hibern8 feature is activated.
> 
> I just want to take this opportunity to ask a rhetorical question.
> 
> Who in the Great Heavens thought it would be a good idea to call the
> feature "auto-hibern8" ?
> 
> Was it really worth it to save 2 characters by writing "8" instead
> of "ate" ?
> 
> This bugs me so much that I just might send a patch to fix it up.

As far as I know, the term "HIBERN8" is mentioned in all UFS related
specifications, like UFS, UFSHCI, UniPro and M-PHY. So probably this
abbreviation has existed for a long time.

> 
> Regards.

Thanks,

Stanley



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
