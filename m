Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31777109AC9
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 10:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4wawcmc4jgyexh2BrbptQXO/bqpcjzrHwZBOXSGrY8=; b=lavgbXL20r7SXA
	/LqOdyj8vBpimHcPAfoVH4pnrPOEk1Jbgf+yFHDPaOwysYzn0dNe8jfXXBwVDX7R0VKDffXDNU1ci
	9EMx6ZKHE3iMzcYF8beqGWqjVbhqFgeUkuzKUahDHHj6LVHKiGhjQe5iNF6snKz6cRG0ajRoTYGSf
	p8nuFL0JNPOQaYePXjPiPcBwW9eVHi/16moVlzMyJhOZY8NKo2uMULRpbrwMjJIbcGC5Otbjj8dck
	gHbGFIaQ1lSfqJmd4B/Vzy4vZrdzpJEqsLMf+ExrYXswmo+wMPWN8kV9zH4G2GvAxhp9nRQZzz4+U
	9u0KWvghjspa9Xh9EXdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWtM-0003Jh-HD; Tue, 26 Nov 2019 09:12:16 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWtJ-0003JL-Rg
 for linux-mediatek@lists.infradead.org; Tue, 26 Nov 2019 09:12:15 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAQ99ZwJ151182;
 Tue, 26 Nov 2019 09:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=vBFYxD5eX5SLS6j0PeqYaAQGAAnUoAlDa0EHrwQ2cYQ=;
 b=qMQWtk+bDq0kTRJwbilMILum8GO4rnDA7RGWWqUU9uNr6nC46XzppUSSvLtpTWlcoEOk
 HTX3adywYy9leOJ6q7ZrO8yMix2r3Tmihub+Uqs6SExe1xs+3/cWKM8P7x92DOEyqkPH
 PTkHKes/ZHDhUewtluDDBHKbTvpTePtV03oqjUzxFDYB1g1GMbV3vYAKvoE+QCeIGyOp
 6wfStDdG1G2P0N3raXe0bi06u8kAj1/e/4VicfvfU92XIhFZg5VYpwGsToj1JBCuSm/j
 O9SiVa57MokasSGmiaNPqGjATtMZbIKahJq4OEO6J1jU2ojZmnBBKbYbJ+IcVCjniwZC Jw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2wevqq5d3c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Nov 2019 09:12:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAQ98vPV014671;
 Tue, 26 Nov 2019 09:12:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2wgwus9d81-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 Nov 2019 09:12:02 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAQ9C0cx025823;
 Tue, 26 Nov 2019 09:12:00 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 Nov 2019 01:11:59 -0800
Date: Tue, 26 Nov 2019 12:11:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH] mt76: Off by one in mt76_calc_rx_airtime()
Message-ID: <20191126091150.GA1759@kadam>
References: <20191121213935.2cbgh3qmd4hv4v5a@kili.mountain>
 <87v9r7ysg0.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9r7ysg0.fsf@toke.dk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9452
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911260083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9452
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911260083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_011213_986290_3B96ADA6 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 09:04:15AM +0100, Toke H=F8iland-J=F8rgensen wrote:
> Dan Carpenter <dan.carpenter@oracle.com> writes:
> =

> > The sband->bitrates[] array has "sband->n_bitrates" elements so this
> > check needs to be >=3D instead of > or we could read beyond the end of =
the
> > array.
> >
> > These values come from when we call mt76_register_device():
> >
> > 	ret =3D mt76_register_device(&dev->mt76, true, mt7603_rates,
> > 				   ARRAY_SIZE(mt7603_rates));
> >
> > Here sband->bitrates[] is mt7603_rates[] and ->n_bitrates is the
> > ARRAY_SIZE()
> >
> > Fixes: 5ce09c1a7907 ("mt76: track rx airtime for airtime fairness and s=
urvey")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/net/wireless/mediatek/mt76/airtime.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/mediatek/mt76/airtime.c b/drivers/net=
/wireless/mediatek/mt76/airtime.c
> > index 55116f395f9a..a4a785467748 100644
> > --- a/drivers/net/wireless/mediatek/mt76/airtime.c
> > +++ b/drivers/net/wireless/mediatek/mt76/airtime.c
> > @@ -242,7 +242,7 @@ u32 mt76_calc_rx_airtime(struct mt76_dev *dev, stru=
ct mt76_rx_status *status,
> >  			return 0;
> >  =

> >  		sband =3D dev->hw->wiphy->bands[status->band];
> > -		if (!sband || status->rate_idx > sband->n_bitrates)
> > +		if (!sband || status->rate_idx >=3D sband->n_bitrates)
> >  			return 0;
> >  =

> >  		rate =3D &sband->bitrates[status->rate_idx];
> =

> This code has recently been ported to mac80211 (net/mac80211/airtime.c).
> It seems that the bug is also present there; care to send a patch for
> that as well? :)

Oh.  Thanks for pointing that out.  I actually saw the static checker
warning for that and ignored it thinking that it was the same code.  :P

I will send a fix for it.

regards,
dan carpenter


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
