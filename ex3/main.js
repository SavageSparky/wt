document.getElementById("submit").addEventListener('click', async()=>{
  let pincode = document.getElementById('pincode').value;
  let pincode_det = await fetch(`https://api.postalpincode.in/pincode/${pincode}`)
  let postoffice_det = await pincode_det.json();
  console.log(postoffice_det);
  let postoffice_arr = postoffice_det[0].PostOffice;
  postoffice_arr.forEach(e => {
    document.getElementById('postoffice').innerHTML += 
    `
    <option value="${e.Name}">${e.Name}</option>
    `;
  });
})

document.getElementById('get_address').addEventListener('click', async()=>{
  let postOffice = document.getElementById('postoffice').value;
  let det = await fetch(`https://api.postalpincode.in/postoffice/${postOffice}`);
  det = await det.json();
  det = det[0].PostOffice[0];
  console.log(det);
  document.querySelector(".address_cont>h5").innerHTML = 
  `
  Post Office:  ${det.Name}<br>
  Branch Type:  ${det.BranchType}<br>
  DeliveryStatus:  ${det.DeliveryStatus}<br>
  Circle:  ${det.Circle}<br>
  District:  ${det.District}<br>
  Division:  ${det.Division}<br>
  State:  ${det.State}<br>
  Country:  ${det.Country}<br>
  `
})

