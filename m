Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48103186572
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 08:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KeyJH9w6kKcrv6E7DUNplm6Oe1bxPDKnLi0prEAibYY=; b=koPTL+ajCAF6hgAhtCEG+LpIN
	8um/1qXiuyWhSr/THTJcL+z3ehp4hiSK7gCgsqmETMCQ3KTTaHZA2d9udyz2Y6Ug+Dzyr6TAVKe3q
	hBb1r2zigZpB/n1cHS+7UbwKGQhAwjD+j4PbGutlFqbVBOcR9L2fEGqVpzS6F1dvwpPaqjuM15DV4
	ZR9XszzyVsz/tFLsXgRSY0shDlcIhK0VuDX6Y5zNaqJT14F7/EualHTc3KmCWKzr8LPp2UbGNgLaz
	9X5LacZHHFhJ1Qr1AjJE1O9SeBL5a7zml5SprupjGEk2I18SHWrMiAQGrMDb+pGTJhEvtqT8+xKGe
	+U6GrQX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjtC-000775-K5; Mon, 16 Mar 2020 07:10:18 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjss-0005f8-V5
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 07:10:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584342598; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=KJZiL0sdohMQeVpJmkN38lZ6qU33N/oMM0pvgkF9gnc=;
 b=LudcbJdOLCldXBL5Vp8nwCLvpa2cYS1UVbQLmb8p2T3/7MobsB7amBevORi3lB9Ko+fWlluZ
 o+mMP5tUIisfpcg5x56+clag7lBs8HuTb41czSLojNqI1bZ6n/czx1uM2Mv0tyTJ5G+wB1Gf
 LiRLTT4JLMtdy5pkvRtOn540fUI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6f2646.7f65ea85a3b0-smtp-out-n04;
 Mon, 16 Mar 2020 07:09:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3034CC43637; Mon, 16 Mar 2020 07:09:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5390EC433D2;
 Mon, 16 Mar 2020 07:09:56 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 15:09:56 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v5 2/8] scsi: ufs: remove init_prefetch_data in struct
 ufs_hba
In-Reply-To: <1584342487.14250.11.camel@mtksdccf07>
References: <20200316034218.11914-1-stanley.chu@mediatek.com>
 <20200316034218.11914-3-stanley.chu@mediatek.com>
 <51fde835f4f03fcca6e83ba6d3579f2e@codeaurora.org>
 <1584342487.14250.11.camel@mtksdccf07>
Message-ID: <29d75c7ff1a5c7fb54ee145049daa5da@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_000959_237310_84F937C7 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, martin.peter~sen@oracle.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Stanley,

On 2020-03-16 15:08, Stanley Chu wrote:
> Hi Can,
> 
> On Mon, 2020-03-16 at 14:25 +0800, Can Guo wrote:
>> On 2020-03-16 11:42, Stanley Chu wrote:
>> > Struct init_prefetch_data currently is used privately in
>> > ufshcd_init_icc_levels(), thus it can be removed from struct ufs_hba.
>> >
>> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
>> > Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
>> > Reviewed-by: Avri Altman <avri.altman@wdc.com>
>> 
>> Hi Stanley,
>> 
>> Earlier, I have one similar patch for this, but it does more than 
>> this.
>> Please check the mail I just sent.
>> 
>> Thanks,
>> Can Guo.
> 
> OK! Thanks to remind me this. Then I can drop this cleanup patch #2 in
> its series to not conflict with your proposed one.
> 
> Thanks,
> Stanley Chu

Sure, thank you for your quick response.

Best regards,
Can Guo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
