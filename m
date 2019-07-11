Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F42651F0
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 08:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:To:From:Subject:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KnX4iFxlyYJ9PyCuLx6JpVmy1PSnzDgMuq2SijpOiLM=; b=e7S45rC0YXK0lm9YCHudBRArfF
	CnVRSyhOFT07wjH6x/r9MxRgYLLUlfyvHzIm/2ftS76JgUV7K5jmz7b0hQc2dy4bt1bJw0DVdcAyD
	IREFwGYDNcMGZIWUXRLs135ieSab4u5Mz1aE/csvLW2KhAd0JStxG44DcIncctHOy4SIrNGZMqtKn
	mqsWNc/744RMZQ9gTpG3OXaiQV/69GCAWOPKT+GMVhWRGqEJxHydWV1V8xW59YSF6UIvDOibK6kPQ
	ghcUnzcqdhVLhWo9k/NfMWe7vSzIPbQWDQGOK2qhaR4JjmqKLIHxnMCo/XBbFRP8ZZxzfYxG+8CWG
	ZspvdJmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlSnz-000130-FB; Thu, 11 Jul 2019 06:43:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlSnv-00012S-Hw
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 06:43:45 +0000
X-UUID: aeafc39fdeee4451a191e56d2576c2e2-20190710
X-UUID: aeafc39fdeee4451a191e56d2576c2e2-20190710
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1698383117; Wed, 10 Jul 2019 22:43:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 23:43:32 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 11 Jul 2019 14:43:30 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 14:43:29 +0800
Message-ID: <1562827383.22938.7.camel@mhfsdcap03>
Subject: Re: [PATCH v2, 3/3] mt8183: emi: add bandwidth driver support
From: Xi Chen <xixi.chen@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
In-Reply-To: <CAJMQK-gTh-Zm8ct-DMsjee7H8GJKWxJ2BWW=YKXeinmAiW98gQ@mail.gmail.com>
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
 <CAJMQK-gTh-Zm8ct-DMsjee7H8GJKWxJ2BWW=YKXeinmAiW98gQ@mail.gmail.com>
Date: Thu, 11 Jul 2019 14:43:03 +0800
MIME-Version: 1.0
X-Mailer: Evolution 3.10.4-0ubuntu2 
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_234343_597642_924F5903 
X-CRM114-Status: GOOD (  16.62  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, srv_heupstream@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 17:40 +0800, Hsin-Yi Wang wrote:
> On Fri, May 24, 2019 at 3:54 AM Xi Chen <xixi.chen@mediatek.com> wrote:
> 
> > +struct mtk_emi {
> > +       struct device *dev;
> > +       void __iomem *cen_emi_base;
> > +       void __iomem *chn_emi_base[MAX_CH];
> > +       void __iomem *emi_mpu_base;
> > +
> > +       struct timer_list emi_bw_timer;
> > +       struct timeval old_tv;
> > +
> > +       unsigned long long emi_bw_array[EMI_BW_ARRAY_SIZE];
> > +       int emi_bw_cur_idx;
> > +};
> > +
> > +static unsigned long long emi_get_max_bw_in_last_array(struct device *dev,
> > +       unsigned long long arr[], unsigned int size)
> > +{
> > +       unsigned int i = 0;
> > +       unsigned long long max = arr[0];
> > +
> > +       while (i < size) {
> > +               if (arr[i] > max)
> > +                       max = arr[i];
> > +               ++i;
> > +       }
> > +       return max;
> > +}
> Would it better that if we store max element in mtk_emi struct{}, so
> that we don't need to scan entire array everytime to find max? Though
> array size only 67.
> This max element can be update in emi_update_bw_array().
	Yes, a good idea. Sorry, v3 doesn't contain the patch. I will try to
improve the codes on v4.
> 
> > +unsigned long long mtk_emi_get_max_bw(struct device *dev)
> > +{
> > +       struct mtk_emi *emi;
> > +
> > +       if (!dev)
> > +               return 0;
> > +
> > +       emi = dev_get_drvdata(dev);
> > +       return emi_get_max_bw_in_last_array(dev,
> > +               emi->emi_bw_array, ARRAY_SIZE(emi->emi_bw_array));
> > +}
> > +EXPORT_SYMBOL(mtk_emi_get_max_bw);
> > +
> > +static void emi_update_bw_array(struct device *dev, unsigned int val)
> > +{
> > +       struct mtk_emi *emi = dev_get_drvdata(dev);
> > +
> > +       if (emi->emi_bw_cur_idx == emi->EMI_BW_ARRAY_SIZE) {
> > +               /* remove the first array element */
> > +               memmove(emi->emi_bw_array, emi->emi_bw_array + 1,
> > +                       sizeof(unsigned long long) * (emi->EMI_BW_ARRAY_SIZE - 1));
> > +               emi->emi_bw_array[emi->EMI_BW_ARRAY_SIZE - 1] = val;
> > +       } else
> > +               emi->emi_bw_array[emi->emi_bw_cur_idx++] = val;
> > +}
> > +
> Is the order of the emi_bw_array important?
> If not, update latest element don't need to be at the end, so we don't
> need O(n) shift everytime when inserting new element.
> If the order is important, we can also do insert in O(1), by adding a
> pointer that points to the oldest element in array. When insert a new
> element, replace oldest element with latest one and move the pointer
> one space backward.
  I understand your idea, but emi driver stores the last 67ms bandwidth,
and just the last 67ms, not all the time. So, we will move the array
elements every 1ms.
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
