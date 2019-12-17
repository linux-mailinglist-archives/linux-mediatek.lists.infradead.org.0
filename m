Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B23122201
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Dec 2019 03:36:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWxrX9eOVMaATJTH7H4aOwegWUIEcM3FJqsx+629P7E=; b=m+v6T0XabZojll
	MidG9AQazrL8PINUqqCTm0f1dTkpwqgxldgu1IWJnyN9hxXEZUWtEpeH1R9tFWpZGPE5APKcRk2RR
	B+Lvj9iFpNtqmkTWF1oOhQymuLE75WIYhQSyvAyk/QtxhuowOi7vztEsFlAX50Yu14DvxGEU8ya2Q
	EECXUnOV1Ju4i72Fsb0cW1l6b/VpXFYMGM5UYNZq7VJrURSppaLydMegSwUfElaoYK28vOXgSen23
	Zty0E2vsHlbnl4vlT4IFAALwobG33veBZxiN+HNOD8Cl0FZy3n4L91v0VeQCsHu7dK6o2/pszHbAF
	pYPSFetuzTLo7C9h9Gag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih2ie-00064Y-P0; Tue, 17 Dec 2019 02:36:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih2ib-000645-AZ
 for linux-mediatek@lists.infradead.org; Tue, 17 Dec 2019 02:36:14 +0000
X-UUID: b3cef4f6fe9e4fe3ae655c065bbed9ec-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=QUrWbAhGkXEzK49AtRA3Hajj8h7XjHkta9yKbDxW5+M=; 
 b=tT+bhJ/rJ/nhBSFV6YKOoret5prFd2rqP1eNcsdQdjdBFMVzflzQRHMSNO8ODQ7o8Sh6vN6yS1kYDbax4WXuQ9bjQ6nO0npx2VD92WEh8cb9JH2+/LElWmLA0nxKXlW9VsH/5O+yCc2wk/8qBU8rFCTi2GrH7G7I9Su4pQaPqbY=;
X-UUID: b3cef4f6fe9e4fe3ae655c065bbed9ec-20191216
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1618102247; Mon, 16 Dec 2019 18:36:08 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 18:36:24 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Dec 2019 10:35:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Dec 2019 10:36:07 +0800
Message-ID: <1576550165.20788.1.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: reduce the hbp and hfp for phy timing
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Hsin-Yi Wang
 <hsinyi@chromium.org>, Jitao Shi <jitao.shi@mediatek.com>
Date: Tue, 17 Dec 2019 10:36:05 +0800
In-Reply-To: <CAFqH_5209EaEzoPBHGM=GiS+v7znZR-XzvQ5L_ThQhhuGc1bXg@mail.gmail.com>
References: <20191213095215.17068-1-jitao.shi@mediatek.com>
 <CAJMQK-iZq0SRR7Q1cyh033xDXwD+MY-utO05+KqFR=ZRuaVUDg@mail.gmail.com>
 <CAFqH_5209EaEzoPBHGM=GiS+v7znZR-XzvQ5L_ThQhhuGc1bXg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_183613_372205_91DEEFCA 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 stonea168@163.com, cawa cheng <cawa.cheng@mediatek.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, sj.huang@mediatek.com,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang =?UTF-8?Q?=28=E9=BB=83=E6=99=BA=E5=82=91=29?=
 <eddie.huang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Mon, 2019-12-16 at 11:30 +0100, Enric Balletbo Serra wrote:
> Hi all,
> 
> Missatge de Hsin-Yi Wang <hsinyi@chromium.org> del dia dl., 16 de des.
> 2019 a les 3:42:
> >
> > On Fri, Dec 13, 2019 at 9:52 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
> > >
> > > There are some extra data transfer in dsi.
> > > ex. LPX, hs_prepare, hs_zero, hs_exit and the sof/eof of dsi packet.
> > > This signal will enlarge the line time. So the real frame on dsi bus
> > > will be lower than calc by video timing.
> > >
> > > So dsi driver reduces the hbp and hfp to keep the line time.
> > >
> 
> This patch not only reduces the hbp and hfp for phy timing, it also
> fixes an actual issue for MT8173 boards (i.e. Acer Chromebook R 13)
> which is that the display is not working anymore (black screen) after
> 7a5bc4e22ecfd74dc3662342beaa909770a3b786 "drm/mediatek: change the dsi
> phytiming calculate method". So the patch is probably missing a:
> 
> Fixes: 7a5bc4e22ecf ("drm/mediatek: change the dsi phytiming calculate method")
> 
> And would be nice to have this patch applied for 5.5
> 
> > > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> 
> If it helps, you can also add my
> 
> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 
> Thanks,
>  Enric

Applied to mediatek-drm-fixes-5.5 [1], thank you all.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.5

Regards,
CK

> 
> > > ---
> >
> > Tested on mt8183 and mt8173
> >
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
