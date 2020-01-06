Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5D2130ADB
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Jan 2020 01:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yChF/5W6zWkPI4zVDo5wSEYwpWp6Gf0IF/yTinERm+E=; b=d3TWgU9lvYTxfO
	fVzvSmz34ROmfK/a5Mawre/M6tmcKt4oUciyOO+1UVVWqTNgJgao2VgCDKNORA5UYK3igoaBvOD5Z
	6EAlJ50wseH5/q8TTb59sOfg9k8JsTxZO/3VV2kcAMzgYdMJFx2asAmMF9p2hros5qVMZQtoWXUNC
	yw7XHJmQ2Wsfdxg+SZxDVMOhFfyiYfj51OlWYm1i+/dWVaJjWUn9Vh4zJgcKsc6iWlyT6PHtbGAEX
	5npW3/KgGwcDFkFPMJnhiXLU7Kgz4Hn2hfT/8+VW07c3MNgn3s4O3HnNLQT1USTOUwgX8kFRDUfGi
	tdHSxkJap9neYLN0U4Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioGEd-0000t9-Vs; Mon, 06 Jan 2020 00:27:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioGEX-0000or-3U; Mon, 06 Jan 2020 00:27:02 +0000
X-UUID: a7b8e976295b4cfbb7ba3839b322c245-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RtocooZxOutpJvHIz7Z7EHFeutv+3ZeQQ4M/OYfYdXE=; 
 b=auZRD/w/39O2uVOF7o2uui3Cse7Pz9s++GKusvTX7OdB+3tkVLYaYKghD8bzeR0dCf3mmRRADiMJzlUXfsrf/mnCah7a8pNwpEMMC6L8WxwNnTE8qPlgkyIiKT+TMVbhfaqjgljoRmIdBFjyta9opQGL1D3i5XaoN3WVXY/IPh8=;
X-UUID: a7b8e976295b4cfbb7ba3839b322c245-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1258569361; Sun, 05 Jan 2020 16:26:50 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 16:26:49 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 08:25:42 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 08:25:07 +0800
Message-ID: <1578270395.17435.4.camel@mtkswgap22>
Subject: RE: [PATCH v1 0/3] scsi: ufs: pass device information to
 apply_dev_quirks
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 6 Jan 2020 08:26:35 +0800
In-Reply-To: <MN2PR04MB699151E6AEC7D15CBE1224A2FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1578200118-29547-1-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB69913F0B671032A388747CF7FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
 <1578229802.17435.3.camel@mtkswgap22>
 <MN2PR04MB699151E6AEC7D15CBE1224A2FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_162701_153989_34EED914 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

On Sun, 2020-01-05 at 16:40 +0000, Avri Altman wrote:
> > Hi Avri,
> > 
> > On Sun, 2020-01-05 at 05:51 +0000, Avri Altman wrote:
> > > You have to squash patch 1 & 2, otherwise your patch 1 won't compile.
> > > Other than that: looks good to me.
> > > Thanks,
> > > Avri
> > 
> > Sorry because I sent 2 series in these two days.
> > 
> > Would you mean patch 1 is series: "scsi: ufs: fix error history and complete
> > device reset history" and patch 2 is series "scsi: ufs: pass device information to
> > apply_dev_quirks"?
> > 
> > Or patch 1 & 2 mean the first 2 commits in this series: "scsi: ufs: pass device
> > information to apply_dev_quirks"?
> This one.

OK! I will send the updated v2.

> 
> > 
> > Thanks a lot.
> > Stanley

Thanks,
Stanley
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
