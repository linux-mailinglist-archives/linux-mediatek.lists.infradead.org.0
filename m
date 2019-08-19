Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DB392541
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 15:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1XoXmNyXfsoaTpWy0TSulitRx3tyDoHbcb/PaLTnOw=; b=OVFGaMLWG3IH2l
	YIusWeBujrYNWztoD44+v/Qg1MN6F9ut+YLlWYZ+FD2V19v3NJq3Ghv/70KTm5S0I1szbQtpNkd+z
	kyESuQwVfFP3iCDoW9qsCZ8P2qFnkK1KLgmxdIVHo32QVfc+VcjwLxciFESfNxz7pkfTBTe2fvrMD
	YwQyFylvvsW+Xwl/3IdQtDtIRyfQE4LB6nl5iIUiYzzZS11SGCwb1nRrAWWkCNoeOVGs9KzlNlnKW
	S80DzMR5RmnCXpHqKIAC4g9VkehIVqmFdrb6zDYjoU0nXX7IUZTZ1NPnkcQwSRelhTrhK2SFfA8z1
	FK3wC6ycaqbvNkzwE19Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhs4-0002FL-NZ; Mon, 19 Aug 2019 13:38:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhrx-00025x-0V; Mon, 19 Aug 2019 13:38:46 +0000
X-UUID: 675b9fef3474465b9414ec1efdeb1b98-20190819
X-UUID: 675b9fef3474465b9414ec1efdeb1b98-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 635948002; Mon, 19 Aug 2019 05:38:28 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 06:38:27 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 21:38:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 21:38:25 +0800
Message-ID: <1566221906.15377.3.camel@mtkswgap22>
Subject: RE: [PATCH v2 0/3] scsi: ufs: fix broken hba->outstanding_tasks
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 19 Aug 2019 21:38:26 +0800
In-Reply-To: <1564044737.7235.9.camel@mtkswgap22>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB69914824302B84E144137869FCC10@MN2PR04MB6991.namprd04.prod.outlook.com>
 <1564044737.7235.9.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063845_069574_3C06EFF1 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

On Thu, 2019-07-25 at 16:52 +0800, Stanley Chu wrote:
> Hi Avri,
> 
> On Thu, 2019-07-25 at 07:54 +0000, Avri Altman wrote:
> > Stanly,
> > 
> > > 
> > > Currently bits in hba->outstanding_tasks are cleared only after their
> > > corresponding task management commands are successfully done by
> > > __ufshcd_issue_tm_cmd().
> > > 
> > > If timeout happens in a task management command, its corresponding
> > > bit in hba->outstanding_tasks will not be cleared until next task
> > > management command with the same tag used successfully finishes.
> > I'm sorry - I still don't understand why you just can't release the tag either way,
> > Just like we do in device management queries tags,
> > Instead of adding all this unnecessary code.
> > 
> > I will not object to your series -
> > just step down and let other people review you patches.

Sorry for late response due to these busy days.

I just got your point and agreed with you: previous proposal may be too
tricky. Simple always wins. So I will provide a short solution in next
version.

Many thanks!
Stanley



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
