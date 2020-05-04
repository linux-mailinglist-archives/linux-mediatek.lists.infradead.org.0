Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35A71C3D57
	for <lists+linux-mediatek@lfdr.de>; Mon,  4 May 2020 16:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZAseZUPMS7Gq8jsj8QceEe0mPG6Nc3LeA9w4NSfOhs=; b=ImTsChksbE+4MJ
	ZmH5WITvzAtVaGO7o3MPCpxvH9Ei1+wYS9D3hhxVJASibOhRgg5oZzC7SbskQH5ee21B4YVk8lC6Q
	j8FqBji8dZC9Bx9H0hTgJ8Ys57WakrWQ0QboWw7lY/hAWuKsnP6dtf3cfGD2I3xAhbn1UUFdPNBqA
	cqA5M153cLt5vEzDFHLPcZp9EOQL34E0dt1f9mZb0b4j4kHAvnP62GXUNdLM4eZ2Fi4qxuVNrcOw2
	5HCZkLiGiEQmHsrFza1Af+lr/5J1JAKLDfiP2VmjTXgiRVpbatRgFQiXwz5d+XVCQdmhhNeE2gRYB
	L6rWfapJfnWuP/JNH2JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcHv-0007DF-Kd; Mon, 04 May 2020 14:41:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcHl-00074p-UQ; Mon, 04 May 2020 14:41:35 +0000
X-UUID: 3afdf3d68eb84ad483611909e9434527-20200504
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2aGaMzA1GyuNZEh0UpXEsA4e6TZN2Eh4ifHdYI0/czs=; 
 b=pzIKIZrOlown6uXwCx89LyMh2ATxN/bO2iYQOSf+nJwzTpkgu9ikqcwpxLe9uShFmorDbw1nae2ACxCUZPgH8WTQRMQ1adRUg5k2dqr29zA7TP5wUHSrPUAi1iwk9xjVTOmJEHmGaCHIibbuV/Ud4efUUJ5EX/mfGdkhLY5ZmB4=;
X-UUID: 3afdf3d68eb84ad483611909e9434527-20200504
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1881611110; Mon, 04 May 2020 06:41:24 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 07:41:27 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 22:41:24 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 4 May 2020 22:41:24 +0800
Message-ID: <1588603287.3197.35.camel@mtkswgap22>
Subject: RE: [PATCH v5 2/8] scsi: ufs: introduce fixup_dev_quirks vops
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Mon, 4 May 2020 22:41:27 +0800
In-Reply-To: <BYAPR04MB46294C86DB9BD1A91256F39BFCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-3-stanley.chu@mediatek.com>
 <BYAPR04MB46294C86DB9BD1A91256F39BFCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_074133_988494_390B1B28 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Avri,

On Mon, 2020-05-04 at 10:38 +0000, Avri Altman wrote:
> > 
> >         ufs_fixup_device_setup(hba);
> > +       ufshcd_vops_fixup_dev_quirks(hba);
> Maybe call your new ufshcd_vops_fixup_dev_quirks as part of ufs_fixup_device_setup

The latter patch exports ufs_fixup_device_setup() for vendors to re-use
it to parse vendor-specific device quirk table during the call of
ufshcd_vops_fixup_dev_quirks(), thus ufshcd_vops_fixup_dev_quirks()
cannot be as part of ufs_fixup_device_setup().

Thanks,
Stanley Chu

> .
> 
> Thanks,
> Avri

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
